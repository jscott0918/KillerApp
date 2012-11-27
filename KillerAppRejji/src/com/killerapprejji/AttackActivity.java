package com.killerapprejji;
//testings
import android.app.Activity;
import android.os.Bundle;
import android.widget.ProgressBar;

public class AttackActivity extends Activity{
	ProgressBar progressBar = (ProgressBar)findViewById(R.id.attack_progress_bar);
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);    
        setContentView(R.layout.activity_attack);
        progressBar.setProgress(progressBar.getMax());
        
	}
	private void initiateNFCAttack(){
		
	}
}


