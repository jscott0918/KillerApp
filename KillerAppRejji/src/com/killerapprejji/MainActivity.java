package com.killerapprejji;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;

public class MainActivity extends Activity {
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //doSplashScreen();
        setContentView(R.layout.activity_main);
        /*   setContentView(R.layout.splash);
        
        final boolean _active = true;
        final int _splashTime = 5000; // time to display the splash screen in ms

        
        //GET SPLASH DISPLAYED ON TIMER
        Thread splashThread = new Thread() {
            @Override
            public void run() {
                try {
                    int waited = 0;
                    while(_active && (waited < _splashTime)) {
                        sleep(100);
                        if(_active) {
                            waited += 100;
                        }
                    }
                } catch(InterruptedException e) {
                    // do nothing
                } finally {
                    finish();
                    startActivity(new Intent("com.droidnova.android.splashscreen.MyApp"));
                    stop();
                }
            }
        };
        splashThread.start();*/
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
    
    public boolean onClickAttackButton(View view){
    	Intent startNewActivityOpen = new Intent(this, AttackActivity.class);
    	startActivityForResult(startNewActivityOpen, 0);
    	return true;
    }
}
