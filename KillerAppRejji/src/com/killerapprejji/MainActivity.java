package com.killerapprejji;

import java.util.Calendar;
import android.util.Log;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

import android.nfc.FormatException;
import android.nfc.NdefMessage;
import android.nfc.NdefRecord;
import android.nfc.NfcAdapter;
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

public class MainActivity extends Activity {
	
	Button attackButton = null;
	Button defendButton = null;
	private static NfcAdapter mNfcAdapter = null;
	private static PendingIntent mNfcPendingIntent = null;
	private static IntentFilter mNdefExchangeFilters[] = null;
	public static final String EXTRA_MESSAGE = "com.killerappRejji.MainActivity.MESSAGE";
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mNfcAdapter = NfcAdapter.getDefaultAdapter(this);
		mNfcPendingIntent = PendingIntent.getActivity(this, 0,
			    new Intent(this, getClass()).addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP), 0);
		// Intent filters for exchanging over p2p.
		IntentFilter ndefDetected = new IntentFilter(NfcAdapter.ACTION_NDEF_DISCOVERED);
		IntentFilter defendDetected = new IntentFilter("defend");
		/*
		Intent getIntent = getIntent();
		String intMessage = getIntent.getStringExtra(MainActivity.EXTRA_MESSAGE);
		Log.d("OnCreate()", "intMessage: " + intMessage);
		if(intMessage.equals("defend")){
			setDefendMessage();
		} else if (intMessage.equals("attack")){
			setAttackMessage();
		}
		try {
		    ndefDetected.addDataType("application/com.killerapprejji.NfcHandle");
		} catch (MalformedMimeTypeException e) {
			Log.e("MalformedMimTypeException", e.getStackTrace().toString());
		}
		*/
		Log.d(this.toString(), "mNfcPendingIntent: ");
		mNdefExchangeFilters = new IntentFilter[] { ndefDetected,defendDetected };
        //NfcHandle nfc = new NfcHandle();
        //nfc.setIdleMessage();
        attackButton = (Button)findViewById(R.id.attack_button);
        defendButton = (Button)findViewById(R.id.defend_button);
        setContentView(R.layout.activity_main);
        
    }
    
    protected void onPause(){
    	super.onPause();
    }
    protected void onResume(){
    	super.onResume();
    }
    
    public void setAttackMessage(){
		InteractionHistory intHist = InteractionHistory.getInstance();
		NdefMessage attackNdefMessage = null;
		NdefRecord[] ndefRecords = new NdefRecord[10];
		ndefRecords[0] = NdefRecord.createMime("application/com.killerapprejji.NfcHandle", new String("attack,attacker:"
				+ intHist.getDisplayName() 
				+ ",attackerid:" + "1").getBytes());
		attackNdefMessage = new NdefMessage(ndefRecords[0]);
		mNfcAdapter.setNdefPushMessage(attackNdefMessage, this);
	}
	
	public void setDefendMessage(){
		InteractionHistory intHist = InteractionHistory.getInstance();
		Log.d("setDefendMessage()", "In setDefendMessage");
		NdefMessage attackNdefMessage = null;
		NdefRecord[] ndefRecords = new NdefRecord[10];
		ndefRecords[0] = NdefRecord.createMime("application/com.killerapprejji.NfcHandle", new String("defend,defender:"
				+ intHist.getDisplayName() 
				+ ",defenderid:" + "1").getBytes());
		attackNdefMessage = new NdefMessage(ndefRecords[0]);
		
		// need to come up with a way to end if the above try/catch fails
		mNfcAdapter.setNdefPushMessage(attackNdefMessage, this);
	}
	public void setIdleMessage(){
		InteractionHistory intHist = InteractionHistory.getInstance();
		NdefMessage attackNdefMessage = null;
		NdefRecord[] ndefRecords = new NdefRecord[10];
		ndefRecords[0] = NdefRecord.createMime("application/com.killerapprejji.NfcHandle", new String("attack,attacker:"
				+ intHist.getDisplayName() 
				+ ",attackerid:" + "1").getBytes());
		attackNdefMessage = new NdefMessage(ndefRecords[0]);
		// need to come up with a way to end if the above try/catch fails
		mNfcAdapter.setNdefPushMessage(attackNdefMessage, this);
	}
	public void setDeadMessage(){
		InteractionHistory intHist = InteractionHistory.getInstance();
		NdefMessage attackNdefMessage = null;
		NdefRecord[] ndefRecords = new NdefRecord[10];
		ndefRecords[0] = NdefRecord.createMime("application/com.killerapprejji.NfcHandle", new String("attack,attacker:"
				+ intHist.getDisplayName() 
				+ ",attackerid:" + "1").getBytes());
		attackNdefMessage = new NdefMessage(ndefRecords[0]);
		// need to come up with a way to end if the above try/catch fails
		mNfcAdapter.setNdefPushMessage(attackNdefMessage, this);
	}
	
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
	    	Log.d("found defend intent", "toast message may pop up");
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
    
    public void onClickViewHistory(View view){
    	Intent startNewActivityOpen = new Intent(this, DisplayInteractions.class);
    	startActivityForResult(startNewActivityOpen, 0);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.activity_main, menu);
        return true;
    }
    
    public boolean onClickMenuButton(View view){
    	Intent startNewActivityOpen = new Intent(this, SetInfo.class);
    	startActivityForResult(startNewActivityOpen, 0);
    	return true;
    }
    
    public void disableDefendButton(){
    	findViewById(R.id.defend_button).setEnabled(false);
    }
    
    public void disableAttackButton(){
    	attackButton.setClickable(false);
    }
    
    public void enableDefendButton(){
    	findViewById(R.id.defend_button).setEnabled(true);
    	
    }
    
    public void enableAttackButton(){
    	attackButton.setClickable(true);
    }
    
    public boolean onClickAttackButton(View view){
    	boolean ret = false;
    	if(ActionAvailability.getInstance().getCanAttack() < Calendar.getInstance().getTimeInMillis()){
    		Log.d("MainActivity", "starting onClickAttackButton");
        	setAttackMessage();
        	Intent startNewActivityOpen = new Intent(this, AttackActivity.class);
    		startActivityForResult(startNewActivityOpen, 0);
    		
    		ActionAvailability.getInstance().increaseCanAttack(60000);
    		ret = true;
    	}
    	else {
    		Toast.makeText(getApplicationContext(), "Cannot attack until: " + new Date(ActionAvailability.getInstance().getCanAttack()), 10000).show();
    		ret = false;
    	}
    	return ret;
    }
    
    public boolean onClickDefendButton(View view){
    	Log.d("MainActivity", "starting onClickDefendButton");
    	if(ActionAvailability.getInstance().getCanDefend() < Calendar.getInstance().getTimeInMillis()){
	    	setDefendMessage();
	    	Intent startNewActivityOpen = new Intent(this, DefendActivity.class);
	    	startActivity(startNewActivityOpen);
	    	ActionAvailability.getInstance().increaseCanDefend(60000);
    	}
    	else {
    		Toast.makeText(getApplicationContext(), "Cannot defend until: " + new Date(ActionAvailability.getInstance().getCanAttack()), 10000).show();
    	}
    	return true;
    }
    
    protected void onActivityResult(int requestCode, int resultCode, Intent data)
    {
    	if (resultCode != RESULT_OK)
    		return;
    	boolean flag = data.getBooleanExtra("result", false);
    	if (flag == true)
    	{
    		findViewById(R.id.defend_button).getHandler().post(new Runnable(){
	    		public void run(){
	    			disableDefendButton();}
	    			});
    		final Timer timer = new Timer();
    		timer.schedule(new TimerTask(){
    			public void run(){
    				findViewById(R.id.defend_button).getHandler().post(new Runnable(){
    		    		public void run(){
    		    			enableDefendButton();}
    		    			});
    			}
    		}, 60000);
    	}
    }
}