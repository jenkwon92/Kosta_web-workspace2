package org.kosta.webstudy23.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductDAO {
	private String url="jdbc:oracle:thin@127.0.0.1:1521:xe";
	private String username="scott";
	private String password="tiger";
	private static ProductDAO instance = new ProductDAO();
	private ProductDAO(){}
	public static ProductDAO getInstance() {
		return instance;
	}
	public void closeAll(PreparedStatement pstmt, Connection con ) throws SQLException {
		if(pstmt!=null)
			pstmt.close();
		if(con!=null)
			con.close();
	}
	public void closeAll(PreparedStatement pstmt, Connection con ,ResultSet rs) throws SQLException {
		if(rs!=null)
			rs.close();
		closeAll(pstmt, con);
	}
	
	
	public ProductVO ProductVOfindProductById(String id) {
		ProductVO vo  = null;
		Connection con = null;
		PreparedStatement psmt = null;
		try {
			con = DriverManager.getConnection(url, username, password);
			String sql ="SELECT * FROM "
			pstmt = con.prepareStatement(sql);
		}
		return vo;
	}
	
}
