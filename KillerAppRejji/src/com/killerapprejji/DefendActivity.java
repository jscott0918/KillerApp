package com.killerapprejji;

//testings
import java.io.UnsupportedEncodingException;
import java.util.Timer;
import java.util.TimerTask;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.widget.ProgressBar;
import android.nfc.*;
import android.nfc.NfcAdapter.CreateNdefMessageCallback;

public class DefendActivity extends Activity implements
		CreateNdefMessageCallback {
	ProgressBar progressBar;
	NfcAdapter nfc;
	boolean flag = false;
	NfcAdapter mNfcAdapter;
	String mCurrentStatus = "defend,defender:"
			+ InteractionHistory.getInstance().getDisplayName()
			+ ",defenderid,"
			+ InteractionHistory.getInstance().getDisplayName();

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_defend);
		progressBar = (ProgressBar) findViewById(R.id.defend_progress_bar);
		// Create a timer object, along with a method to increment the progress
		// bar.
		final Timer timer = new Timer();
		mNfcAdapter = NfcAdapter.getDefaultAdapter(this);
		// Create a timer object, along with a method to increment the progress
		// bar.
		if (mNfcAdapter != null) {
			mNfcAdapter.setNdefPushMessageCallback(this, this);
		}
		timer.scheduleAtFixedRate(new TimerTask() {
			public void run() {
				// have the timer schedule the progress bar to update at a fixed
				// interval.
				progressBar.incrementProgressBy(progressBar.getMax() / 15);
				// If time runs out, return to main menu
				if (progressBar.getProgress() == progressBar.getMax()) {
					flag = true;
					finish();
				}
				// if a communications interrupt is received, cancel the timer
				// and handle the communication
			}
		}, 0, 1000);
	}

	@Override
	public NdefMessage createNdefMessage(NfcEvent event) {

		Log.d("MainActivity", "in createNdefMessage");
		NdefMessage msg;
		Log.d("mCurrentStatus", "mCurrentStatus: " + mCurrentStatus);
		String msgContents = mCurrentStatus.toString();
		byte[] languageCode = null;
		byte[] msgBytes = null;
		try {
			languageCode = "en".getBytes("US-ASCII");
			msgBytes = msgContents.getBytes("UTF-8");
		} catch (UnsupportedEncodingException e) {
			Log.e("Unsupported Encoding", "Cannot format message");
		}

		byte[] messagePayload = new byte[1 + languageCode.length
				+ msgBytes.length];
		messagePayload[0] = (byte) 0x02; // status byte: UTF-8 encoding and
											// length of language code is 2
		System.arraycopy(languageCode, 0, messagePayload, 1,
				languageCode.length);
		System.arraycopy(msgBytes, 0, messagePayload, 1 + languageCode.length,
				msgBytes.length);

		msg = new NdefMessage(
				new NdefRecord[] { createApplicationRecord(messagePayload) });
		return msg;

	}

	private NdefRecord createApplicationRecord(byte[] payload) {
		String mimeType = "application/com.killerapprejji.MainActivity";

		byte[] mimeBytes = mimeType.getBytes();

		NdefRecord mimeRecord = new NdefRecord(NdefRecord.TNF_MIME_MEDIA,
				mimeBytes, new byte[0], payload);
		return mimeRecord;

	}
}
