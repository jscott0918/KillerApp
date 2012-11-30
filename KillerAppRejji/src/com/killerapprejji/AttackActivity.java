package com.killerapprejji;
//testings
import android.app.Activity;
import android.os.Bundle;
import android.widget.ProgressBar;
import android.nfc.*;

public class AttackActivity extends Activity{
	ProgressBar progressBar = (ProgressBar)findViewById(R.id.attack_progress_bar);
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);    
        setContentView(R.layout.activity_attack);
        progressBar.setProgress(progressBar.getMax());
        initiateNFCAttack();
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


