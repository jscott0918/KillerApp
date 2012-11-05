package com.killerapprejji;

public class Event {
	private String Date;
	private String Time;
	private String Attacker;
	private String Defender;
	
	public Event(String date, String time, String attacker, String defender){
		Date = date;
		Time = time;
		Attacker = attacker;
		Defender = defender;
	}
	
	public String getDate(){
		return Date;
	}
	
	public String getTime(){
		return Time;
	}
	
	public String getAttacker(){
		return Attacker;
	}
	
	public String getDefender(){
		return Defender;
	}
	

}
