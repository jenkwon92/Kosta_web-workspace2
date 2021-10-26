package org.kosta.webstudy28.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

public class EmployeeDAO {
	private static EmployeeDAO instance = new EmployeeDAO();
	private DataSource dataSource;

	private EmployeeDAO() {
		this.dataSource = DataSourceManager.getInstance().getDataSource();
	}

	public static EmployeeDAO getInstance() {
		return instance;
	}

	public void closeAll(PreparedStatement pstmt, Connection con) throws SQLException {
		if (pstmt != null)
			pstmt.close();
		if (con != null)
			con.close();
	}

	public void closeAll(ResultSet rs, PreparedStatement pstmt, Connection con) throws SQLException {
		if (rs != null)
			rs.close();
		closeAll(pstmt, con);
	}

	public int getTotalCount() throws SQLException {
		int totalCount = 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			String sql = "SELECT COUNT(*) FROM mvc_employee";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next())
				totalCount = rs.getInt(1);
		} finally {
			closeAll(rs, pstmt, con);
		}
		return totalCount;
	}

	public ArrayList<EmployeeVO> getAllEmployeeList() throws SQLException {
		ArrayList<EmployeeVO> list = new ArrayList<EmployeeVO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			StringBuilder sql =new StringBuilder("SELECT e.empno, e.ename, e.sal,d.dname, d.loc ");
			sql.append("FROM mvc_employee e, mvc_department d ");
			sql.append("WHERE e.deptno=d.deptno ");
			sql.append("ORDER BY e.empno DESC");
			pstmt= con.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(new EmployeeVO(rs.getInt(1),rs.getString(2),rs.getInt(3),new DepartmentVO(rs.getString(4),rs.getString(5))));
				/*
				DepartmentVO dept = new DepartmentVO();
				dept.setDname(rs.getString(4));
				dept.setLoc(rs.getString(5));
				list.add(new EmployeeVO(rs.getInt(1),rs.getString(2),rs.getInt(3),dept));
				*/
				/*
				EmployeeVO emp = new EmployeeVO();
				emp.setEmpno(rs.getInt(1));
				emp.setEname(rs.getString(2));
				emp.setSal(rs.getInt(3));
				
				DepartmentVO dept = new DepartmentVO();
				dept.setDname(rs.getString(4));
				dept.setLoc(rs.getString(5));
				emp.setDepartmentVO(dept);
				list.add(emp);
				*/
			}
		} finally {
			closeAll(rs, pstmt, con);
		}
		return list;
	}
}
