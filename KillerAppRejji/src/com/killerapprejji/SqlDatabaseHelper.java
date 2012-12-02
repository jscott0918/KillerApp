package com.killerapprejji;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class SqlDatabaseHelper extends SQLiteOpenHelper {

	private static final int DATABASE_VERSION = 1;
    private static final String DICTIONARY_TABLE_NAME = "dictionary";
    private static final String DATABASE_NAME = "KillerAppDB";
    private static final String DICTIONARY_TABLE_CREATE =
                "CREATE TABLE IF NOT EXISTS" + DICTIONARY_TABLE_NAME 
                + " (" +
                "attacker" + " TEXT, " +
                "attackerid" + " VARCHAR(64)" +
                "defender" + " TEXT," +
                "defenderid" + " VARCHAR(64)" +
                "timestamp" + " DATETIME," +                
                ");";
    
    public SqlDatabaseHelper(Context context){
		super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }
    
	@Override
	public void onCreate(SQLiteDatabase db) {
		db.execSQL(DICTIONARY_TABLE_CREATE);
		
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
				+ " (attacker, attackerid, defender, defenderid) "
				+ " VALUES ( " 
					+ attack.getAttacker() + ", "
					+ attack.getAttackerId() + ", "
					+ attack.getDefender() + ", "
					+ attack.getDefenderId() + ", "
				+ " ) "
				);
	}

}
