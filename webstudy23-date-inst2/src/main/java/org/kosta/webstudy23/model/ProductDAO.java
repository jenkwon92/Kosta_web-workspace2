package org.kosta.webstudy23.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

public class ProductDAO {
	// DBCP를 이용하므로 아래 변수는 필요없어서 주석 처리 
	/*
	 * private String url="jdbc:oracle:thin:@127.0.0.1:1521:xe"; private String
	 * username="scott"; private String password="tiger";
	 */
	private DataSource dataSource;
	private static ProductDAO instance=new ProductDAO();
	private ProductDAO() {
		this.dataSource=DataSourceManager.getInstance().getDataSource();
	}
	public static ProductDAO getInstance() {
		return instance;
	}
	public void closeAll(PreparedStatement pstmt,Connection con) throws SQLException{
		if(pstmt!=null)
			pstmt.close();
		if(con!=null)
			con.close(); // dbcp로부터 빌려온 컨넥션을 dbcp에 반납한다 
	}
	public void closeAll(ResultSet rs,PreparedStatement pstmt,Connection con) throws SQLException{
		if(rs!=null)
			rs.close();
		closeAll(pstmt, con);
	}
	public ProductVO findProductById(String id) throws SQLException {
		ProductVO vo=null;
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			//con=DriverManager.getConnection(url, username, password);
			//dbcp로부터 컨넥션을 빌려온다 
			con=dataSource.getConnection();
			String sql="select id,name,maker,price,to_char(regdate,'YYYY-MM-DD HH24:MI:SS') from mvc_product where id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next())
				vo=new ProductVO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5));
		}finally {
			closeAll(rs, pstmt, con);
		}
		return vo;
	}
	public void registerProduct(ProductVO productVO) throws SQLException {
		Connection con=null;
		PreparedStatement pstmt=null;
		try {
			//con=DriverManager.getConnection(url, username, password);
			con=dataSource.getConnection();//dbcp로부터 컨넥션을 빌려온다 
			String sql="insert into mvc_product(id,name,maker,price,regdate) values(mvc_product_seq.nextval,?,?,?,sysdate)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, productVO.getName());
			pstmt.setString(2, productVO.getMaker());
			pstmt.setInt(3, productVO.getPrice());
			pstmt.executeUpdate();
		}finally {
			closeAll(pstmt, con);
		}
	}
	public ArrayList<ProductVO> getAllProductList() throws SQLException{
		ArrayList<ProductVO> list=new ArrayList<ProductVO>();
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			//con=DriverManager.getConnection(url, username, password);
			con=dataSource.getConnection();//dbcp로부터 컨넥션을 빌려온다 
			String sql="select id,name,maker,to_char(regdate,'YYYY.MM.DD') from mvc_product order by id desc";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next())
				list.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4)));
		}finally {
			closeAll(rs, pstmt, con);
		}
		return list;
	}
}

























