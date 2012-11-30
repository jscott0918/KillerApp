package com.killerapprejji;
//testings
import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ProgressBar;
import android.nfc.*;

public class AttackActivity extends Activity{
	ProgressBar progressBar;// = (ProgressBar)findViewById(R.id.attack_progress_bar);
	@Override
	//public void onCreate(Bundle savedInstanceState) {
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);    
        setContentView(R.layout.activity_attack);
        progressBar = (ProgressBar) findViewById(R.id.attack_progress_bar);
        progressBar.setProgress(progressBar.getMax());
        progressBar.setOnClickListener(finishActivity());
        //initiateNFCAttack();
        this.setResult(0);
        this.finish();
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
		NfcAdapter nfc = NfcAdapter.getDefaultAdapter(getParent());
		String attackMessage = new String("Attack," + InteractionHistory.getInstance().getDisplayName());
		try {
			nfc.setNdefPushMessage(new NdefMessage(attackMessage.getBytes()), this.getParent());
		} catch (FormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}


