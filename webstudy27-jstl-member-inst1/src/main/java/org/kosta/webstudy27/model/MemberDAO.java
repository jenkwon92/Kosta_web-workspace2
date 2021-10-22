package org.kosta.webstudy27.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

public class MemberDAO {
	private static MemberDAO instance = new MemberDAO();
	private DataSource dataSource;

	private MemberDAO() {
		this.dataSource = DataSourceManager.getInstance().getDataSource();
	}

	public static MemberDAO getInstance() {
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

	public MemberVO findMemberById(String id) throws SQLException {
		MemberVO vo = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();// dbcp로부터 컨넥션을 빌려온다
			StringBuilder sql = new StringBuilder(
					"select id,name,address,to_char(birthday,'YYYY.MM.DD'),to_char(regdate,'YYYY.MM.DD HH24:MM:SS') ");
			sql.append("from mvc_member where id=?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				vo = new MemberVO(rs.getString(1), null, rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5));
			}
		} finally {
			closeAll(rs, pstmt, con);// dbcp로 컨넥션을 반환한다
		}
		return vo;
	}

	public MemberVO login(String id, String password) throws SQLException {
		MemberVO vo = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection(); // dbcp로 부터 컨넥션을 빌려온다
			StringBuilder sql = new StringBuilder("SELECT name,address, to_char(birthday,'YYYY.MM.DD') ");
			sql.append("FROM mvc_member WHERE id=? and password=? ");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				vo = new MemberVO(id, password, rs.getString(1), rs.getString(2), rs.getString(3), null);
			}
		} finally {
			closeAll(rs, pstmt, con);
		}
		return vo;
	}

	public ArrayList<MemberVO> findMemberListByAddress(String address) throws SQLException {
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = dataSource.getConnection();
			StringBuilder sql = new StringBuilder("SELECT id,name,address,to_char(birthday,'YYYY.MM.DD') ");
			sql.append("FROM mvc_member WHERE address=?");
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, address);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(new MemberVO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4)));
			}
		} finally {
			closeAll(rs, pstmt, con);
		}
		return list;
	}
}
