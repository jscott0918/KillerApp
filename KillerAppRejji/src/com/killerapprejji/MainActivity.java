package com.killerapprejji;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.widget.Button;

public class MainActivity extends Activity {
	
	Button attackButton = null;
	Button defendButton = null;
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
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
    
    public boolean disableDefendButton(){
    	defendButton.setClickable(false);
    	return true;
    }
    
    public boolean disableAttackButton(){
    	attackButton.setClickable(false);
    	return true;
    }
    
    public boolean enableDefendButton(){
    	defendButton.setClickable(true);
    	return true;
    }
    
    public boolean enableAttackButton(){
    	attackButton.setClickable(true);
    	return true;
    }
    
    public boolean onClickAttackButton(View view){
    	Intent startNewActivityOpen = new Intent(this, AttackActivity.class);
    	startActivityForResult(startNewActivityOpen, 0);
    	return true;
    }
    
    public boolean onClickDefendButton(View view){
    	Intent startNewActivityOpen = new Intent(this, DefendActivity.class);
    	startActivityForResult(startNewActivityOpen, 0);
    	return true;
    }
}
