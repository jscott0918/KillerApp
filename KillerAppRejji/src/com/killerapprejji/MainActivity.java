package com.killerapprejji;

import java.io.UnsupportedEncodingException;
import java.util.Calendar;
import android.util.Log;
import java.util.Date;
import android.nfc.NdefMessage;
import android.nfc.NdefRecord;
import android.nfc.NfcAdapter;
import android.nfc.NfcAdapter.CreateNdefMessageCallback;
import android.nfc.NfcEvent;
import android.nfc.tech.*;
import android.os.Bundle;
import android.os.Parcelable;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentFilter.MalformedMimeTypeException;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity extends Activity implements CreateNdefMessageCallback {

	Button attackButton = null;
	Button defendButton = null;
	private IntentFilter[] intentFiltersArray;
	private static NfcAdapter mNfcAdapter = null;
	private static PendingIntent mNfcPendingIntent = null;
	private static IntentFilter mNdefExchangeFilters[] = null;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		mNfcAdapter = NfcAdapter.getDefaultAdapter(this);
		PendingIntent pendingIntent = PendingIntent.getActivity(this, 0,
				new Intent(this, getClass())/*
											 * .addFlags(Intent.
											 * FLAG_ACTIVITY_SINGLE_TOP)
											 */, 0);
		mNfcPendingIntent = pendingIntent;
		Log.d("MainActivity", "in onCreate");
		Log.d("onCreate", "getId(this): "
				+ InteractionHistory.getInstance().getId(this));
		// Intent filters for exchanging over p2p.
		if (mNfcAdapter != null) {
			IntentFilter ndefDetected = new IntentFilter(
					NfcAdapter.ACTION_NDEF_DISCOVERED);
			IntentFilter defendDetected = new IntentFilter("defend");
			IntentFilter ndef = new IntentFilter(
					NfcAdapter.ACTION_NDEF_DISCOVERED);
			try {
				ndef.addDataType("application/com.killerapprejji.*");
			} catch (MalformedMimeTypeException e) {
				Log.e("com.killerapprejji.MainActivity",
						"could not add ndef data type");
			}
			this.intentFiltersArray = new IntentFilter[] { ndef, };
			mNdefExchangeFilters = new IntentFilter[] { ndefDetected,
					defendDetected };
			mNfcAdapter.setNdefPushMessageCallback(this, this);
		}
		getNdefMessages(getIntent());
		 
		setContentView(R.layout.activity_main);
	}

	protected void onPause() {
		super.onPause();
		if (mNfcAdapter != null) {
			mNfcAdapter.disableForegroundDispatch(this);
		}
	}

	protected void onResume() {
		super.onResume();
		if (mNfcAdapter != null) {
			mNfcAdapter.enableForegroundDispatch(this, mNfcPendingIntent,
					intentFiltersArray, new String[][] { new String[] {
							NfcF.class.getName(), NfcA.class.getName(),
							NfcB.class.getName() } });
			mNfcAdapter.setNdefPushMessageCallback(this, this);
			getNdefMessages(getIntent());

		}
		
	}

	protected void onNewIntent(Intent intent) {
		// NDEF exchange mode
		Log.d("onNewIntent", intent.getAction());
		if (NfcAdapter.ACTION_NDEF_DISCOVERED == (intent.getAction())) {
			NdefMessage[] msgs = getNdefMessages(intent);
			for (int i = 0; i < msgs.length; i++) {
				if (new String(msgs[0].toByteArray()).contains("attack")) {

				}
			}
			Toast.makeText(this, "You got 'em!", Toast.LENGTH_LONG).show();
		} else if ("defend" == intent.getAction()) {
			Log.d("found defend intent", "toast message may pop up");
		}
	}

	NdefMessage[] getNdefMessages(Intent intent) {
		// Parse the intent
		NdefMessage[] msgs = null;
		String action = intent.getAction();
		Log.d("getNdefMessages", "In getNdefMessages");
		if (NfcAdapter.ACTION_TAG_DISCOVERED.equals(action)
				|| NfcAdapter.ACTION_NDEF_DISCOVERED.equals(action)) {
			Parcelable[] rawMsgs = intent
					.getParcelableArrayExtra(NfcAdapter.EXTRA_NDEF_MESSAGES);
			if (rawMsgs != null) {
				msgs = new NdefMessage[rawMsgs.length];
				for (int i = 0; i < rawMsgs.length; i++) {
					{
						msgs[i] = (NdefMessage) rawMsgs[i];
						byte[] typ = msgs[i].getRecords()[0].getType();
						byte[] payload = msgs[i].getRecords()[0].getPayload();
						String textEncoding = ((payload[0] & 0200) == 0) ? "UTF-8"
								: "UTF-16";
						int languageCodeLength = payload[0] & 0077;
						try {
							@SuppressWarnings("unused")
							String languageCode = new String(payload, 1,
									languageCodeLength, "US-ASCII");
						} catch (UnsupportedEncodingException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						String text = null;
						try {
							text = new String(payload, languageCodeLength + 1,
									payload.length - languageCodeLength - 1,
									textEncoding);
						} catch (UnsupportedEncodingException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
							String val = new String(typ);
							val += new String(payload);
							Toast.makeText(getApplicationContext(),
									"Second" + val, Toast.LENGTH_LONG).show();
						}
						Log.i("Foreground dispatch",
								"Discovered tag with intent: " + intent);
						Log.d("getNdefMessages", "Discovered tag " + text);
						parseInteractionString(text);
					}
				}

			} else {
				// Unknown tag type
				Log.d("Unknown Tag", "Unknown tag");
				byte[] empty = new byte[] {};
				NdefRecord record = new NdefRecord(NdefRecord.TNF_UNKNOWN,
						empty, empty, empty);
				NdefMessage msg = new NdefMessage(new NdefRecord[] { record });
				msgs = new NdefMessage[] { msg };
			}
		} else {
			Log.d("getNdefMessages", "Didn't find any Ndef messages");
		}
		return msgs;
	}

	public void parseInteractionString(String interaction){
		String[] elements = interaction.split(",");
		Log.d("parseInteractionString", "item 1:" + elements[0]); //idle, defend, or attack
		Log.d("parseInteractionString", "item 2:" + elements[1]); //displayName of opponent
		Log.d("parseInteractionString", "item 3:" + elements[2]); //deviceId of opponent
	}
	
	public void onClickViewHistory(View view) {
		Intent startNewActivityOpen = new Intent(this,
				DisplayInteractions.class);
		startActivityForResult(startNewActivityOpen, 0);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		getMenuInflater().inflate(R.menu.activity_main, menu);
		return true;
	}

	public boolean onClickMenuButton(View view) {
		Intent startNewActivityOpen = new Intent(this, SetInfo.class);
		startActivityForResult(startNewActivityOpen, 0);
		return true;
	}

	public boolean onClickAttackButton(View view) {
		boolean ret = false;
		if (ActionAvailability.getInstance().getCanAttack() < Calendar
				.getInstance().getTimeInMillis()) {
			Log.d("MainActivity", "starting onClickAttackButton");
			Intent startNewActivityOpen = new Intent(this, AttackActivity.class);
			startActivityForResult(startNewActivityOpen, 0);

			ActionAvailability.getInstance().increaseCanAttack(60000);
			ret = true;
		} else {
			Toast.makeText(
					getApplicationContext(),
					"Cannot attack until: "
							+ new Date(ActionAvailability.getInstance()
									.getCanAttack()), Toast.LENGTH_LONG).show();
			ret = false;
		}
		return ret;
	}

	public boolean onClickDefendButton(View view) {
		Log.d("MainActivity", "starting onClickDefendButton");
		if (ActionAvailability.getInstance().getCanDefend() < Calendar
				.getInstance().getTimeInMillis()) {
			Intent startNewActivityOpen = new Intent(this, DefendActivity.class);
			startActivity(startNewActivityOpen);
			ActionAvailability.getInstance().increaseCanDefend(60000);
		} else {
			Toast.makeText(
					getApplicationContext(),
					"Cannot defend until: "
							+ new Date(ActionAvailability.getInstance()
									.getCanDefend()), Toast.LENGTH_LONG).show();
		}
		return true;
	}

	@Override
	public NdefMessage createNdefMessage(NfcEvent event) {

		//Log.d("MainActivity", "in createNdefMessage");
		NdefMessage msg;
		String msgContents ="idle,"
				+ InteractionHistory.getInstance().getDisplayName(this)
				+ "," + InteractionHistory.getInstance().getId(this);
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
