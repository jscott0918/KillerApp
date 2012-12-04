package com.killerapprejji;

import java.util.ArrayList;

import android.os.Bundle;
import android.os.Handler;
import android.app.Activity;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TableRow;
import android.widget.Toast;
import android.widget.TextView;
import android.support.v4.app.NavUtils;

public class DisplayInteractions extends Activity {
	ArrayList<TableRow> rows = new ArrayList<TableRow>();
	private SqlDatabaseHelper dbHelper = null;
	
	TextView textview = null;
	
	// Set up a handler to poll events when this activity is resumed
	private final Runnable mUpdateScoreList = new Runnable() {
		public void run() {
			parseEvents(dbHelper.getEvents());
		}
	};
	
	private final Handler mHandler = new Handler();
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		setContentView(R.layout.table_layout);
		dbHelper = new SqlDatabaseHelper(this);
		textview = (TextView)findViewById(R.id.kill_record);
		
		// Show the Up button in the action bar.
		//getActionBar().setDisplayHomeAsUpEnabled(true);
	}
	
	@Override
	protected void onResume() {
		mHandler.postDelayed(mUpdateScoreList, 10* 1000);
		super.onResume();
	}
	
	@Override
	protected void onPause() {
		mHandler.removeCallbacks(mUpdateScoreList);
		super.onPause();
	}
	
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.table_layout, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		switch (item.getItemId()) {
		case android.R.id.home:
			// This ID represents the Home or Up button. In the case of this
			// activity, the Up button is shown. Use NavUtils to allow users
			// to navigate up one level in the application structure. For
			// more details, see the Navigation pattern on Android Design:
			//
			// http://developer.android.com/design/patterns/navigation.html#up-vs-back
			//
			NavUtils.navigateUpFromSameTask(this);
			return true;
		}
		return super.onOptionsItemSelected(item);
	}
	

	private void parseEvents(ArrayList<Event> history){
		for(int i=0; i<history.size(); i++){
			textview.append(constructEntry(history.get(i)) + "\n");
		}
	}
	
	private String constructEntry(Event e){
		return ( e.getDateTime() + " " + e.getAttacker() + " " + e.getDefender() );
	}
	

}
