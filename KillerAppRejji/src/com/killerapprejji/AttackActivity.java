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

public class AttackActivity extends Activity implements
		CreateNdefMessageCallback {
	ProgressBar progressBar;
	NfcAdapter mNfcAdapter;
	String mCurrentStatus = "attack,"
			+ InteractionHistory.getInstance().getDisplayName(this)
			+ ","
			+ InteractionHistory.getInstance().getId(this);

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_attack);
		progressBar = (ProgressBar) findViewById(R.id.attack_progress_bar);
		mNfcAdapter = NfcAdapter.getDefaultAdapter(this);
		// Create a timer object, along with a method to increment the progress
		// bar.
		if (mNfcAdapter != null) {
			mNfcAdapter.setNdefPushMessageCallback(this, this);
		}
		final Timer timer = new Timer();
		timer.scheduleAtFixedRate(new TimerTask() {
			public void run() {
				// have the timer schedule the progress bar to update at a fixed
				// interval.
				progressBar.incrementProgressBy(progressBar.getMax() / 15);
				// If time runs out, return to main menu
				if (progressBar.getProgress() == progressBar.getMax()) {
					callFinish();
				}
				// if a communications interrupt is received, cancel the timer
				// and handle the communication
				// initiateNFCAttack();
			}
		}, 0, 1000);
		this.setResult(0);
	}

	private void callFinish() {
		finish();
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
