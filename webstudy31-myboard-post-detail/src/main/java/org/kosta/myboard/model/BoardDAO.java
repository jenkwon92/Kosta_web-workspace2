package org.kosta.myboard.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

public class BoardDAO {
	private static BoardDAO instance=new BoardDAO();
	private DataSource dataSource;
	private BoardDAO() {
		this.dataSource=DataSourceManager.getInstance().getDataSource();
	}
	public static BoardDAO getInstance() {
		return instance;
	}
	public void closeAll(PreparedStatement pstmt,Connection con) throws SQLException{
		if(pstmt!=null)
			pstmt.close();
		if(con!=null)
			con.close();
	}
	public void closeAll(ResultSet rs,PreparedStatement pstmt,Connection con) throws SQLException{
		if(rs!=null)
			rs.close();
		closeAll(pstmt, con);
	}
	public ArrayList<PostVO> getPostingList() throws SQLException{
		ArrayList<PostVO> list = new ArrayList<PostVO>();
		Connection con =null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection(); //dbcp로 부터 커넥션을 빌려온다 
			StringBuilder sql = new StringBuilder("SELECT b.no, b.title, m.name, to_char(b.time_posted,'YYYY.MM.DD') AS time_posted, b.hits ");
			sql.append("FROM board b , board_member m ");
			sql.append("WHERE b.id=m.id ");
			sql.append("ORDER BY b.no DESC");
			pstmt = con.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			while(rs.next()) {
				PostVO pvo =new PostVO();
				pvo.setNo(rs.getInt("no")); //1,2,3... 대신 컬럼명으로 가능
				pvo.setTitle(rs.getString("title"));
				pvo.setTimePosted(rs.getString("time_posted"));
				pvo.setHits(rs.getInt("hits"));
				MemberVO mvo = new MemberVO();
				mvo.setName(rs.getString("name"));
				pvo.setMemberVO(mvo);
				list.add(pvo);
				//list.add(new PostVO(rs.getInt("no"),rs.getString("title"),null,rs.getInt("hits"),rs.getString("time_posted"),new MemberVO(null,null,rs.getString("name"))));
			}
		}finally {
			closeAll(rs, pstmt, con);
		}
		return list;
	}
	
	public PostVO getPostingByNo(String no) throws SQLException {
		return null;
	}
}



















