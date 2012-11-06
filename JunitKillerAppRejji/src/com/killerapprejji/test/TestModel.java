package com.killerapprejji.test;

import junit.framework.TestCase;
import com.killerapprejji.*;

public class TestModel extends TestCase {
	
	InteractionHistory historyTable = null;
	Event event1;
	Event event2;
	Event event3;
	MainActivity mainActivity = null;
	
	public TestModel(String name) {
		super(name);
	}
	
	protected void setUp() throws Exception{
		super.setUp();
		mainActivity = new MainActivity();
		historyTable = InteractionHistory.getInstance();
		event1 = new Event("051112", "175000", "herper", "derper");
		event2 = new Event("051112", "175500", "herper", "angrybeaver");
		event3 = new Event("123124", "232131", "derper", "angrybeaver");
	}
	public void testAddEvent(){
		historyTable.addEvent(event1);
		historyTable.addEvent(event2);
		historyTable.addEvent(event3);
		assertEquals(true, historyTable.getEvent("herper").contains(event1));
		assertEquals(true, historyTable.getEvent("herper").contains(event2));
		assertEquals(false, historyTable.getEvent("herper").contains(event3));
	}
	public void testGetEvent(){
		historyTable.addEvent(event1);
		historyTable.addEvent(event2);
		historyTable.addEvent(event3);
		assertEquals(true, historyTable.getEvent("herper").contains(event1));
		assertEquals(true, historyTable.getEvent("herper").contains(event2));
		assertEquals(false, historyTable.getEvent("herper").contains(event3));
	}
	protected void tearDown() throws Exception {
		super.tearDown();
	}
}
