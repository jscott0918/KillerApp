package com.killerapprejji;

import java.util.ArrayList;

public interface UpdateInteraction {

	boolean addEvent(Event e);
	ArrayList<Event> getEvent(String search);
	boolean updateList(ArrayList<Event> update);
	
}
