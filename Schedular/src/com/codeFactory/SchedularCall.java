package com.codeFactory;

import java.util.Timer;

public class SchedularCall {

	public static void main(String args[]) {
		Timer timer = new Timer();
		SchedularMain scMain = new SchedularMain();
		timer.scheduleAtFixedRate(scMain, 0, 50000);
		
		System.out.println("!!!!");
		
	}
	
	// 스케쥴러......
	// Spring Scheduler ,  Spring Quartz
	
	// Spring Quartz 장점 : 스케쥴러 실패에 따른 후처리 가능, / memory, DB 등 다양한 방식 지원
	
	//결과적으로 만약 단순한 Scheduling에 따른 작업이 필요하시다면 단연코 Spring Scheduler를 추천합니다. 
	//Spring Quartz는 좀 더 Scheduling의 세밀한 제어가 필요할 때, 
	//그리고 만들어야하는 Scheduling 서비스 노드가 멀티이기 때문에 클러스터링이 필요할 때 여러분이 만들고자 하는 서비스에 도움이 될 것입니다.
}
