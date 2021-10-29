package org.kosta.myboard.model;

import java.io.Serializable;
/*
 * 로그인 인증 정보로 세션에 저장될 객체 
 * 서버 리로드 될 떄 객체 직렬화되어 세션이 백업되므로
 * 세샨에 저장될 객테의 클래스 또한 Serializale interface 를 implements 한다
 * 
 */
public class MemberVO implements Serializable{
	private static final long serialVersionUID = 6964264592421059490L;
	
	private String id;
	private String password;
	private String name;
	public MemberVO() {
		super();
	}
	public MemberVO(String id, String password, String name) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + "]";
	}
	
}
