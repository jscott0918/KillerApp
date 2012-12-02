package com.killerapprejji;
//testings
import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ProgressBar;
import android.widget.Toast;
import android.nfc.*;

public class AttackActivity extends Activity{
	ProgressBar progressBar;// = (ProgressBar)findViewById(R.id.attack_progress_bar);
	NfcAdapter nfc;
	@Override
	//public void onCreate(Bundle savedInstanceState) {
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);    
        setContentView(R.layout.activity_attack);
        progressBar = (ProgressBar) findViewById(R.id.attack_progress_bar);
        progressBar.setProgress(progressBar.getMax());
        progressBar.setOnClickListener(finishActivity());
        //initiateNFCAttack();
        // Create a timer object, along with a method to increment the progress bar
        // have the timer schedule the progress bar to update at a fixed interval.
        // if a communications interrupt is received, cancel the timer and handle the communication
        this.setResult(0);
	}
	
	private void callFinish(){
		finish();
	}
	private OnClickListener finishActivity(){
		return new OnClickListener(){

			@Override
			public void onClick(View v) {
				callFinish();
				
			}
			
		};
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


