package com.killerapprejji;

public class Event {
	private long datetime;
	private String attacker;
	private String attackerId;
	private String defender;
	private String defenderId;
	
	public Event(long indatetime, String inattacker, String inattackerId, String indefender, String indefenderId){
		datetime = indatetime;
		attacker = inattacker;
		attackerId = inattackerId;
		defender = indefender;
		defenderId = indefenderId;
	}
	
	public long getDateTime(){
		return datetime;
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
