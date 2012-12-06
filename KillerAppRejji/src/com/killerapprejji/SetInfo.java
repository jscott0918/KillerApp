package com.killerapprejji;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;

public class SetInfo extends Activity {

	Button savebutton = null;
	Button resetbutton = null;
	EditText editTextObject = null;

	OnClickListener saveonClickListener = new OnClickListener() {
	    public void onClick(View v) {
	    	saveButtonClick();
	    }
		
	};
	
	OnClickListener resetonClickListener = new OnClickListener() {
		public void onClick(View v) {
			resetButtonClick();
		}
	};


	/** Called when the activity is first created. */
	@Override
	public void onCreate(Bundle savedInstanceState) {

	    super.onCreate(savedInstanceState);
	    setContentView(R.layout.set_player_info);
	    savebutton = (Button)findViewById(R.id.save_player_info_button);
	    savebutton.setOnClickListener(saveonClickListener);
	    resetbutton = (Button)findViewById(R.id.reset_score_button);
	    resetbutton.setOnClickListener(resetonClickListener);
	    editTextObject = (EditText)findViewById(R.id.display_name_edittext);
	    if(InteractionHistory.getInstance().getDisplayName(this) != null){
	    	editTextObject.setHint(InteractionHistory.getInstance().getDisplayName(this));
	    }

	}

	private void saveButtonClick() {
		SqlDatabaseHelper sqlDB = new SqlDatabaseHelper(this);
		sqlDB.setName(editTextObject.getText().toString());
		InteractionHistory.getInstance().setDisplayName(
				editTextObject.getText().toString());
		super.finish();
	}
	
	private void resetButtonClick(){
		SqlDatabaseHelper sqlDB = new SqlDatabaseHelper(this);
		sqlDB.clearEvents();
		super.finish();
	}

}
