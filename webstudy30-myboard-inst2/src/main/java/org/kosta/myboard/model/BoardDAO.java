package org.kosta.myboard.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

public class BoardDAO {
	private static BoardDAO instance = new BoardDAO();
	private DataSource dataSource;
	private BoardDAO() {
		this.dataSource = DataSourceManager.getInstance().getDataSource();
	}
	public static BoardDAO getInstance() {
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
	
	public ArrayList<PostVO> getPostingList() throws SQLException{
		ArrayList<PostVO> list = new ArrayList<PostVO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			StringBuilder sql = new StringBuilder("SELECT no,title,content,hits,time_posted,id FROM board");
			pstmt = con.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(new PostVO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),new MemberVO(rs.getString(6),null,null)));
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return list;
	}
	public PostVO getPostingByNo(String no) {
		return null;
	}
	
	
} 
