package com.killerapprejji;
//testings
import java.nio.charset.Charset;
import java.util.Timer;
import java.util.TimerTask;

import android.app.Activity;
import android.os.Bundle;
import android.widget.ProgressBar;
import android.widget.Toast;
import android.nfc.*;

public class AttackActivity extends Activity{
	ProgressBar progressBar;
	NfcAdapter nfc;
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);    
        setContentView(R.layout.activity_attack);
        progressBar = (ProgressBar) findViewById(R.id.attack_progress_bar);
        // Create a timer object, along with a method to increment the progress bar.
        doNFCTask();
		final Timer timer = new Timer();
		timer.scheduleAtFixedRate(new TimerTask(){
			public void run(){
		        // have the timer schedule the progress bar to update at a fixed interval.
				progressBar.incrementProgressBy(progressBar.getMax()/15);
				// If time runs out, return to main menu
				if (progressBar.getProgress() == progressBar.getMax())
				{
					callFinish();
				}
		        // if a communications interrupt is received, cancel the timer and handle the communication
		        //initiateNFCAttack();
			}
		}, 0, 1000);
        this.setResult(0);
	}
	
	private void callFinish(){
		finish();
	}

	private void doNFCTask(){
		
		NdefRecord mimeRecord = NdefRecord.createMime("application/com.killerapprejji.attack",
			    new String("attacker:" + ",attackerid:" + "").getBytes(Charset.forName("US-ASCII")));
	}
	private void initiateNFCAttack(){
		// create NFC adapter
		nfc = NfcAdapter.getDefaultAdapter(getParent());
		if (nfc == null) {
			//not sure what "Toast" is, but the example uses it
			Toast.makeText(this, "NFC not available.", Toast.LENGTH_LONG).show();
			//finish();
			return;
		}
		// create and send message
		String attackMessage = new String("Attack," + InteractionHistory.getInstance().getDisplayName());
		try {
			nfc.setNdefPushMessage(new NdefMessage(attackMessage.getBytes()), this.getParent());
		} catch (FormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}


