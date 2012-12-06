package com.killerapprejji;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;

public class SetInfo extends Activity {

	Button button = null;
	EditText editTextObject = null;
	OnClickListener onClickListener = new OnClickListener() {
	    public void onClick(View v) {
	    	saveButtonClick();
	    }
		
	};

	/** Called when the activity is first created. */
	@Override
	public void onCreate(Bundle savedInstanceState) {
	    super.onCreate(savedInstanceState);
	    setContentView(R.layout.set_player_info);
	    button = (Button)findViewById(R.id.save_player_info_button);
	    button.setOnClickListener(onClickListener);
	    editTextObject = (EditText)findViewById(R.id.display_name_edittext);
		SqlDatabaseHelper sqlDB = new SqlDatabaseHelper(this);
		Log.d("SetInfo", "sqlDB: " + sqlDB.getName());
	    if(InteractionHistory.getInstance().getDisplayName() != null){
	    	editTextObject.setHint(InteractionHistory.getInstance().getDisplayName());
	    }
	}
	
	private void saveButtonClick(){
		SqlDatabaseHelper sqlDB = new SqlDatabaseHelper(this);
		sqlDB.setName(editTextObject.getText().toString());
		InteractionHistory.getInstance().setDisplayName(editTextObject.getText().toString());
		super.finish();
	}

}
