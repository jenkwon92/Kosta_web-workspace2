package org.kosta.webstudy28.model;

public class DepartmentVO {
	private int deptno;
	private String dname;
	private String loc;
	private String tel;
	public DepartmentVO() {
		super();
	}
	
	
	
	public DepartmentVO(String dname, String loc) {
		super();
		this.dname = dname;
		this.loc = loc;
	}



	public DepartmentVO(int deptno, String dname, String loc, String tel) {
		super();
		this.deptno = deptno;
		this.dname = dname;
		this.loc = loc;
		this.tel = tel;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}

	
}
