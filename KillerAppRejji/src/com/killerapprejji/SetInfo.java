package com.killerapprejji;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;

public class SetInfo extends Activity {

	Button button = null;
	EditText editTextObject = null;
	/** Called when the activity is first created. */
	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	    button = (Button)findViewById(R.id.save_player_info_button);

	    
	    // TODO Auto-generated method stub
	}
/*	private OnClickListener  = new OnClickListener() {
	    public void onClick(View v) {
	    	InteractionHistory intHistory = InteractionHistory.getInstance();
	    	intHistory.;
	    }
		
	};*/

}
