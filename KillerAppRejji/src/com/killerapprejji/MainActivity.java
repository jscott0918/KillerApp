package com.killerapprejji;

import java.util.Calendar;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class MainActivity extends Activity {
	
	Button attackButton = null;
	Button defendButton = null;
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        NfcHandle nfc = new NfcHandle();
        nfc.setIdleMessage();
        attackButton = (Button)findViewById(R.id.attack_button);
        defendButton = (Button)findViewById(R.id.defend_button);
        setContentView(R.layout.activity_main);
        
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
    	NfcHandle nfc = new NfcHandle();
    	nfc.setAttackMessage();
    	if(ActionAvailability.getInstance().getCanAttack() < Calendar.getInstance().getTimeInMillis()){
    		Intent startNewActivityOpen = new Intent(this, AttackActivity.class);
    		startActivityForResult(startNewActivityOpen, 0);
    		ActionAvailability.getInstance().increaseCanAttack(600000);
    		ret = true;
    	}
    	else {
    		Toast.makeText(getApplicationContext(), "Cannot attack until: " + new Date(ActionAvailability.getInstance().getCanAttack()), 10000).show();
    		ret = false;
    	}
    	return ret;
    }
    
    public boolean onClickDefendButton(View view){
    	NfcHandle nfc = new NfcHandle();
    	nfc.setDefendMessage();
    	Intent startNewActivityOpen = new Intent(this, DefendActivity.class);
    	startActivityForResult(startNewActivityOpen, 0);
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