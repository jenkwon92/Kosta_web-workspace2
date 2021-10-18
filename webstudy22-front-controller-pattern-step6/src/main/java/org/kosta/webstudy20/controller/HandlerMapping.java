package org.kosta.webstudy20.controller;
/**
 *  컨트롤러 구현체 생성 전담 클래스 
 *  실제 컨트롤러 로직을 수행할 객체를 생성하는 클래스  
 */
public class HandlerMapping {
		private static HandlerMapping instance=new HandlerMapping();
		private HandlerMapping() {}
		public static HandlerMapping getInstance() {
			return instance;
		}
		/*
		 *  step5 version create method를 개선 
		 *  실행시에 클라이언트가 전달한 command를 이용해 동적으로 객체를 생성 
		 *  컨트롤러 구현 객체가 추가될 때 코드를 변경하지 않아도 된다는 장점 
		 */
		public Controller create(String command) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
			//현재 패키지 정보를 받아온다 
			//String packageName=this.getClass().getPackage().getName();
			//client가 전달한 command가 실제컨트롤러 클래스명이므로 패키지 정보에 추가한다 
			//String classInfo=packageName+"."+command;
			String classInfo=new StringBuilder(this.getClass().getPackage().getName()).append(".").append(command).toString();
			//Reflection API를 이용해 동적으로 객체를 생성 
			Controller controller=(Controller)Class.forName(classInfo).newInstance();
			return controller;
		}
		
		
		/*   // step4 version create 코드 
		public Controller create(String command) {
			Controller controller=null;					
			if(command.equals("findCustomerById"))
				controller=new FindCustomerByIdController();
			else if(command.equals("registerCustomer"))
				controller=new RegisterCustomerController();
			else if(command.equals("updateCustomer"))
				controller=new UpdateCustomerController();
			return  controller;
		}
		*/
}






