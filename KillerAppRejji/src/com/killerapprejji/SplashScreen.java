package com.killerapprejji;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.content.Intent;

public class SplashScreen extends Activity {

	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		setContentView(R.layout.splash_screen);

		Handler handler = new Handler();

		// run a thread after 2 seconds to start the home screen
		handler.postDelayed(new Runnable() {

			@Override
			public void run() {
				// make sure we close the splash screen so the back button won't
				// take us back to it

				finish();
				// start the home screen
				Intent intent = new Intent(SplashScreen.this,
						MainActivity.class);
				SplashScreen.this.startActivity(intent);
			}
		}, 2000); // time in milliseconds
	}
}