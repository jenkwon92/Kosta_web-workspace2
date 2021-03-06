package org.kosta.webstudy20.model;
// Singleton Design Pattern : 시스템 상에서 단 한번 객체를 생성하고 여러 곳에 공유해서 사용하게 하는 디자인 패턴 
public class MockDAO {
	private static MockDAO instance=new MockDAO();
	private MockDAO() {}
	public static MockDAO getInstance() {
		return instance;
	}
	public String findCustomerById(String id) {
		String customerInfo=null;
		if(id.equals("java"))
			customerInfo=id+" 아이유 오리";
		return customerInfo;
	}
	public void registerCustomer(String customerInfo) {
		System.out.println("고객정보등록: "+customerInfo+" db에 insert");
	}
	public void updateCustomer(String customerInfo) {
		System.out.println("고객정보수정:"+customerInfo+" db에 update");
	}
	public void deleteCustomer(String customerId) {
		System.out.println(customerId+"아이디 고객정보삭제 db에 delete");
	}
}













