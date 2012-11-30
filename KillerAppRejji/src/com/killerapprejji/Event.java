package com.killerapprejji;

public class Event {
	private String date;
	private String time;
	private String attacker;
	private String attackerId;
	private String defender;
	private String defenderId;
	
	public Event(String indate, String intime, String inattacker, String inattackerId, String indefender, String indefenderId){
		date = indate;
		time = intime;
		attacker = inattacker;
		attackerId = inattackerId;
		defender = indefender;
		defenderId = indefenderId;
	}
	
	public String getDate(){
		return date;
	}
	
	public String getTime(){
		return time;
	}
	
	public String getAttacker(){
		return attacker;
	}
	
	public String getDefender(){
		return defender;
	}
	public String getAttackerId(){
		return attackerId;
	}
	
	public String getDefenderId(){
		return defenderId;
	}
	

}
