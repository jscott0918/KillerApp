package com.killerapprejji;

import android.nfc.FormatException;
import android.nfc.NdefMessage;
import android.nfc.NdefRecord;
import android.nfc.NfcAdapter;
import android.os.Bundle;
import android.os.Parcelable;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentFilter.MalformedMimeTypeException;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.Menu;
import android.widget.Toast;

public class NfcHandle extends Activity {
	
	private static NfcAdapter mNfcAdapter = null;
	private static PendingIntent mNfcPendingIntent = null;
	private static IntentFilter mNdefExchangeFilters[] = null;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		mNfcAdapter = NfcAdapter.getDefaultAdapter(this);
		mNfcPendingIntent = PendingIntent.getActivity(this, 0,
			    new Intent(this, getClass()).addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP), 0);
			// Intent filters for exchanging over p2p.
			IntentFilter ndefDetected = new IntentFilter(NfcAdapter.ACTION_NDEF_DISCOVERED);
			IntentFilter defendDetected = new IntentFilter("defend");
			try {
			    ndefDetected.addDataType("application/com.killerapprejji.NfcHandle");
			} catch (MalformedMimeTypeException e) {
			}
			Log.d(this.toString(), "mNfcPendingIntent: " + mNfcPendingIntent.toString());
			mNdefExchangeFilters = new IntentFilter[] { ndefDetected,defendDetected };
			finish();
		//setContentView(R.layout.activity_nfc_handle);
	}
	
	protected void onResume(){
		NdefMessage msg = (NdefMessage) getIntent().getParcelableArrayExtra(NfcAdapter.EXTRA_NDEF_MESSAGES)[0];
		byte[] payload = msg.getRecords()[0].getPayload();
		Toast.makeText(getBaseContext(), payload.toString(), 40000);
	}
	
	public void setAttackMessage(){
		InteractionHistory intHist = InteractionHistory.getInstance();
		NdefMessage attackNdefMessage = null;
		try {
			attackNdefMessage = new NdefMessage(new String("attack,attacker:"
											+ intHist.getDisplayName() 
											+ ",attackerid:" + intHist.getId()).getBytes());
		} catch (FormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// need to come up with a way to end if the above try/catch fails
		mNfcAdapter.setNdefPushMessage(attackNdefMessage, this);
	}
	public void setDefendMessage(){
		InteractionHistory intHist = InteractionHistory.getInstance();
		NdefMessage attackNdefMessage = null;
		try {
			attackNdefMessage = new NdefMessage(new String("defend,defender:"
											+ intHist.getDisplayName() 
											+ ",defenderid:" + intHist.getId()).getBytes());
		} catch (FormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// need to come up with a way to end if the above try/catch fails
		mNfcAdapter.setNdefPushMessage(attackNdefMessage, this);
	}
	public void setIdleMessage(){
		InteractionHistory intHist = InteractionHistory.getInstance();
		TelephonyManager tm = (TelephonyManager) getBaseContext().getSystemService(Context.TELEPHONY_SERVICE);
		NdefMessage attackNdefMessage = null;
		try {
			attackNdefMessage = new NdefMessage(new String("idle,defender:"
											+ intHist.getDisplayName() 
											+ ",defenderid:" + tm.getDeviceId()).getBytes());
		} catch (FormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// need to come up with a way to end if the above try/catch fails
		mNfcAdapter.setNdefPushMessage(attackNdefMessage, this);
	}
	public void setDeadMessage(){
		InteractionHistory intHist = InteractionHistory.getInstance();
		NdefMessage attackNdefMessage = null;
		try {
			attackNdefMessage = new NdefMessage(new String("dead,defender:"
											+ intHist.getDisplayName() 
											+ ",defenderid:" + intHist.getId()).getBytes());
		} catch (FormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// need to come up with a way to end if the above try/catch fails
		mNfcAdapter.setNdefPushMessage(attackNdefMessage, this);
	}
	
	@Override
	protected void onNewIntent(Intent intent) {
	    // NDEF exchange mode
	    if (NfcAdapter.ACTION_NDEF_DISCOVERED == (intent.getAction())) {
	        NdefMessage[] msgs = getNdefMessages(intent);
	        for(int i = 0; i < msgs.length; i++){
	        	if(new String(msgs[0].toByteArray()).contains("attack")){
	        		
	        	}
	        }
	        Toast.makeText(this, "You got 'em!", Toast.LENGTH_LONG).show();
	    }
	    else if("defend" == intent.getAction()){
	    	Toast.makeText(this, "Defend action intent filtered by onNewIntent in NfcHandle", Toast.LENGTH_LONG).show();
	    }
	    
	    finish();
	}

	private void enableNdefExchangeMode() {
		try {
			mNfcAdapter.setNdefPushMessage(new NdefMessage(new String().getBytes()),this);
		} catch (FormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    mNfcAdapter.enableForegroundDispatch(this, mNfcPendingIntent, 
	        mNdefExchangeFilters, null);
	}
	
	NdefMessage[] getNdefMessages(Intent intent) {
	    // Parse the intent
	    NdefMessage[] msgs = null;
	    String action = intent.getAction();
	    if (NfcAdapter.ACTION_TAG_DISCOVERED.equals(action)
	        || NfcAdapter.ACTION_NDEF_DISCOVERED.equals(action)) {
	        Parcelable[] rawMsgs = 
	            intent.getParcelableArrayExtra(NfcAdapter.EXTRA_NDEF_MESSAGES);
	        if (rawMsgs != null) {
	            msgs = new NdefMessage[rawMsgs.length];
	            for (int i = 0; i < rawMsgs.length; i++) {
	                msgs[i] = (NdefMessage) rawMsgs[i];
	            }
	        } else {
	            // Unknown tag type
	            byte[] empty = new byte[] {};
	            NdefRecord record = 
	                new NdefRecord(NdefRecord.TNF_UNKNOWN, empty, empty, empty);
	            NdefMessage msg = new NdefMessage(new NdefRecord[] {
	                record
	            });
	            msgs = new NdefMessage[] {
	                msg
	            };
	        }
	    } else {
	        finish();
	    }
	    return msgs;
	}
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.activity_nfc_handle, menu);
		return true;
	}

}
