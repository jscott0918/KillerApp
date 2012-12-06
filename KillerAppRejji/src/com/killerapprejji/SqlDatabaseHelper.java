package com.killerapprejji;

import java.util.ArrayList;
import java.util.Calendar;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class SqlDatabaseHelper extends SQLiteOpenHelper {

	private static final int DATABASE_VERSION = 1;
    private static final String DICTIONARY_TABLE_NAME = "dictionary";
    private static final String USERNAME_TABLE_NAME = "usernames";
    private static final String DATABASE_NAME = "KillerAppDB";
    private static final String DICTIONARY_TABLE_CREATE =
                "CREATE TABLE IF NOT EXISTS " + DICTIONARY_TABLE_NAME 
                + " ( " +
                "attacker" + " TEXT, " +
                "attackerid" + " VARCHAR(64), " +
                "defender" + " TEXT, " +
                "defenderid" + " VARCHAR(64), " +
                "timestamp" + " INT " +
                ");";
    private static final String USERNAME_TABLE_CREATE = 
    			"CREATE TABLE IF NOT EXISTS " + USERNAME_TABLE_NAME 
    			+ " ( " +
    			"timestamp" + " INT, " + 
    			"username" + " TEXT " +
    			");";
    
    public SqlDatabaseHelper(Context context){
		super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }
    
	@Override
	public void onCreate(SQLiteDatabase db) {
		db.execSQL(DICTIONARY_TABLE_CREATE);
		db.execSQL(USERNAME_TABLE_CREATE);
		
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		// TODO Auto-generated method stub

	}
	
	public void recordAttack(Event attack)
	{
		SQLiteDatabase db = this.getWritableDatabase();
		db.execSQL(
				"INSERT INTO " + DICTIONARY_TABLE_NAME 
				+ " (attacker, attackerid, defender, defenderid, timestamp) "
				+ " VALUES ( " 
					+ "\""+attack.getAttacker()+"\"" + ", "
					+ "\""+attack.getAttackerId()+"\"" + ", "
					+ "\""+attack.getDefender()+"\"" + ", "
					+ "\""+attack.getDefenderId()+"\"" + ", "
					+ attack.getDateTime() 
					+ " ) "
				);
	}
	
	public ArrayList<Event> getEvents(){
		SQLiteDatabase db = this.getReadableDatabase();
		Cursor resultscursor;
		ArrayList<Event> results = new ArrayList<Event>();
		String[] columnNames = new String[5];
		
		columnNames[0] = "attacker";
		columnNames[1] = "attackerid";
		columnNames[2] = "defender";
		columnNames[3] = "defenderid";
		columnNames[4] = "timestamp";
		
		resultscursor = db.query(DICTIONARY_TABLE_NAME, columnNames, null, null, null, null, null);
		if (resultscursor.moveToFirst() == false) return results;
		while (!resultscursor.isAfterLast()) {
			Event e = new Event(resultscursor.getLong(4),      // timestamp
					            resultscursor.getString(0),    // attacker
					            resultscursor.getString(1),    // attackerid
					            resultscursor.getString(2),    // defender
					            resultscursor.getString(3)     // defenderid
					            );
			results.add(e);
			resultscursor.moveToNext();
		}
		return results;
	}
	
	/* Set the username as entered in the settings */
	public void setName(String name)
	{
		SQLiteDatabase db = this.getWritableDatabase();
		long timestamp = Calendar.getInstance().getTimeInMillis();
		db.execSQL(
				"INSERT INTO " + USERNAME_TABLE_NAME +
				" (timestamp, username) " +
				" VALUES ( " +
				timestamp + ", " +
				"\""+name+"\"" + " )"
				);
		
	}
	
	/* Get the username from the database */
	public String getName()
	{
		SQLiteDatabase db = this.getReadableDatabase();
		Cursor namecursor;
		String[] columnNames = new String[1];
		columnNames[0] = "username";
		// fetch the top 1 row of usernames ordered by time descending
		namecursor = db.query(USERNAME_TABLE_NAME, columnNames, null, null, null, null, "timestamp DESCENDING", "1");
		if (namecursor.moveToFirst() == false) {
			return "";
		} else {
			return namecursor.getString(0);
		}
		
	}
}
