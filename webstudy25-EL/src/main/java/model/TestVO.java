package model;

public class TestVO {
	private String id="java";
	//JSP EL에서 접근가능
	public String getName() {
		System.out.println("TestVO getName() 실행");
		return "아이유";
	}
	//EL 에서 접근불가, get과 is 계열의 메서드 외는 접근 불가
	public String findInfo() {
		return "짜장면";
	}
	//EL 에서 접근가능
	public boolean isExist() {
		return false;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
}
