package com.model;

import java.io.Serializable;
import java.util.ArrayList;

public class InteractionHistory implements Serializable, UpdateInteraction{
	public static InteractionHistory interactionHistory;
	private static ArrayList<Event> eventList;
	
	private InteractionHistory(){
		eventList = new ArrayList<Event>();
	}
	
	public boolean addEvent(Event event){
		eventList.add(event);
		return true;
	}
	
	public ArrayList<Event> getEvent(String search){
		ArrayList<Event> ret = new ArrayList<Event>();
		for(Event e : eventList){
			if(e.getAttacker().equals(search)){
				ret.add(e);
			} else if(e.getDefender().equals(search)){
				ret.add(e);
			}
		}
		return ret;
	}

	@Override
	public boolean updateList(ArrayList<Event> update) {
		for(Event e : update){
			if(!eventList.contains(e)) 
				eventList.add(e);
		}
		return true;
	}
	

}
