package com.killerapprejji;
import java.util.Calendar;


public class ActionAvailability {
	private static long mCanAttackAfter = 0;
	private static long mCanBeAttackedAfter = 0;
	private static long mCanDefendAfter = 0;
	private static ActionAvailability actionAvailability = null;
	
	private ActionAvailability(long canAttackAfter, long canBeAttackedAfter, long canDefendAfter){
		mCanAttackAfter = canAttackAfter;
		mCanBeAttackedAfter = canBeAttackedAfter;
		mCanDefendAfter = canDefendAfter;
	}
	
	public static ActionAvailability getInstance(){
		if(actionAvailability == null ){
			actionAvailability = new ActionAvailability(Calendar.getInstance().getTimeInMillis(), Calendar.getInstance().getTimeInMillis(), Calendar.getInstance().getTimeInMillis());
		}
		return actionAvailability;
	}
	
	public long increaseCanAttack(int increase){
		mCanAttackAfter = Calendar.getInstance().getTimeInMillis() + increase;
		return mCanAttackAfter;
	}
	
	public long increaseCanBeAttacked(int increase){
		mCanBeAttackedAfter = Calendar.getInstance().getTimeInMillis() + increase;
		return mCanBeAttackedAfter;
	}
	
	public long increaseCanDefend(int increase){
		mCanDefendAfter = Calendar.getInstance().getTimeInMillis() + increase;
		return mCanDefendAfter;
	}
	
	public long getCanAttack(){
		return mCanAttackAfter;
	}
	
	public long getCanBeAttacked(){
		return mCanBeAttackedAfter;
	}
	
	public long getCanDefend(){
		return mCanDefendAfter;
	}
}
