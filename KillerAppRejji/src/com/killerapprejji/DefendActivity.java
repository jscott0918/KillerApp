package com.killerapprejji;
//testings
import java.util.Timer;
import java.util.TimerTask;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.ProgressBar;
import android.widget.Toast;
import android.nfc.*;

public class DefendActivity extends Activity{
	ProgressBar progressBar;
	NfcAdapter nfc;
	boolean flag = false;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);    
        setContentView(R.layout.activity_defend);
        progressBar = (ProgressBar) findViewById(R.id.defend_progress_bar);
        // Create a timer object, along with a method to increment the progress bar.
		final Timer timer = new Timer();
		timer.scheduleAtFixedRate(new TimerTask(){
			public void run(){
		        // have the timer schedule the progress bar to update at a fixed interval.
				progressBar.incrementProgressBy(progressBar.getMax()/15);
				// If time runs out, return to main menu
				if (progressBar.getProgress() == progressBar.getMax())
				{
					flag = true;
					callFinish();
				}
		        // if a communications interrupt is received, cancel the timer and handle the communication
			}
		}, 0, 1000);
	}
	
	private void callFinish(){
		Intent returnIntent = new Intent();
		returnIntent.putExtra("result", flag);
		setResult(RESULT_OK,returnIntent);
		finish();
	}

}
