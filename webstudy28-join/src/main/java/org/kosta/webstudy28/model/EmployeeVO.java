package org.kosta.webstudy28.model;

public class EmployeeVO {
	private int empno;
	private String ename;
	private int sal;
	private DepartmentVO departmentVO; //has a relationship
	public EmployeeVO() {
		super();
	}
	public EmployeeVO(int empno, String ename, int sal, DepartmentVO departmentVO) {
		super();
		this.empno = empno;
		this.ename = ename;
		this.sal = sal;
		this.departmentVO = departmentVO;
	}
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public int getSal() {
		return sal;
	}
	public void setSal(int sal) {
		this.sal = sal;
	}
	public DepartmentVO getDepartmentVO() {
		return departmentVO;
	}
	public void setDepartmentVO(DepartmentVO departmentVO) {
		this.departmentVO = departmentVO;
	}
	
	
}
