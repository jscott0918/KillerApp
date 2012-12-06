package com.killerapprejji;

import android.provider.Settings.Secure;
import java.io.Serializable;
import java.util.ArrayList;

import android.app.Activity;
import android.content.Context;

public class InteractionHistory implements Serializable, UpdateInteraction {
	/**
	 * 
	 */
	private static final long serialVersionUID = -2577026923314776978L;
	public static InteractionHistory interactionHistory = null;
	private static ArrayList<Event> eventList;
	private static String displayName = null;

	// private NfcAdapter nfc;

	/*
	 * public void setNFC(Activity a){ nfc = NfcAdapter.getDefaultAdapter(a);
	 * 
	 * }
	 */

	/*
	 * public NfcAdapter getNFC(){ return nfc; }
	 */

	private InteractionHistory() {
		eventList = new ArrayList<Event>();
	}

	public boolean addEvent(Event event) {
		eventList.add(event);
		return true;
	}

	public boolean setDisplayName(String name) {
		displayName = name;
		return true;
	}

	public String getDisplayName(Context context) {
		SqlDatabaseHelper sqlDB = new SqlDatabaseHelper(context);
		displayName = sqlDB.getName();
		return displayName;
	}

	public String getId(Activity activity) {
		;
		return Secure.getString(activity.getContentResolver(),
				Secure.ANDROID_ID);
	}

	public static InteractionHistory getInstance() {
		if (interactionHistory == null) {
			interactionHistory = new InteractionHistory();
		}
		return interactionHistory;
	}

	public ArrayList<Event> getEvent(String search) {
		ArrayList<Event> ret = new ArrayList<Event>();
		for (Event e : eventList) {
			if (e.getAttacker().equals(search)) {
				ret.add(e);
			} else if (e.getDefender().equals(search)) {
				ret.add(e);
			}
		}
		return ret;
	}

	@Override
	public boolean updateList(ArrayList<Event> update) {
		for (Event e : update) {
			if (!eventList.contains(e))
				eventList.add(e);
		}
		return true;
	}

}
