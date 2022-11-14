package com.codeFactory;

import java.util.Date;
import java.util.TimerTask;

public class SchedularMain extends TimerTask{

	Date current;
	int cnt = 0;
	
	@Override
	public void run() {
		// TODO Auto-generated method stub
		current = new Date();
		System.out.println("current ::: " + current);
		//cnt++;
		if(cnt == 5) {
			System.out.println("EXIT.");
			System.exit(0);
		}
		
		System.out.println("TEST진행중");
		
	}

}
