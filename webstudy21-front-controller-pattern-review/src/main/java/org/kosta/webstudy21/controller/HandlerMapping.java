package org.kosta.webstudy21.controller;
//Singleton Design Pattern : 시스템 상에 단 한번 객체를 생성해 공유하여 사용하고자 할 때 적용하는 디자인 패턴
public class HandlerMapping {
	private static HandlerMapping instance=new HandlerMapping();
	private HandlerMapping() {}
	public static HandlerMapping getInstance() {
		return instance;
	}
	/*
	 *  reflection API를 이용해 런타임시에 동적으로 객체를 생성 
	 */
	public Controller create(String command) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
		//팩키지명을 받아온다
		String packageInfo=this.getClass().getPackage().getName();
		//클래스명을 팩키지명에 추가한다
		String classInfo=new StringBuilder(packageInfo).append(".").append(command).toString(); 
		//동적으로 컨트롤러 객체를 생성해 FrontControllerServlet으로 리턴한다 

		return (Controller) Class.forName(classInfo).newInstance();
	}
}
