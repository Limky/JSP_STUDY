package dao;

//	DAO : Data Access Obejct
//	- 데이터 처리를 담당(제어)하는 객체
//	- DB연결 작업 및 요청 내용에 대한 처리와 응답을
//		진행한다.

import java.sql.*;

import mUtil.DBConn;
import dto.J02_BoardDto;

import java.util.*;

public class J02_DB_Board {

	public int writeOne(J02_BoardDto data) {

		int res = 0;
		
		try {
		
			Connection conn = DBConn.getConnection();
		
//			#.3 SQL
//			- num, title, writer, contents, viewcnt, open, regdate
//			- board를 담당하는 시퀀스 : m_board_seq
			
			String sql = "insert into m_board "
				+ "values(m_board_seq.nextval, ?, 'aa', ?, 0, ?, sysdate)";
//			writer에 들어갈 id 명령은 추후 변경될 예정
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, data.getTitle());
			ps.setString(2, data.getContents());
			ps.setString(3, data.getOpen());
			
			res = ps.executeUpdate();

			ps.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return res;
	}
	
	
	public ArrayList<J02_BoardDto> readAll() {
		
		ArrayList<J02_BoardDto> listc = new ArrayList();
		
		try {
		
			Connection conn = DBConn.getConnection();
		
//			#.3 SQL
			String sql 
				= "select * from m_board order by num desc";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				
				J02_BoardDto dto = new J02_BoardDto();
				dto.setNum(rs.getInt("num"));
				dto.setTitle(rs.getString("title"));
				dto.setWriter(rs.getString("writer"));
				dto.setContents(rs.getString("contents"));
				dto.setViewcnt(rs.getInt("viewcnt"));
				dto.setOpen(rs.getString("open"));
				dto.setRegDate(rs.getDate("regdate"));
				
				listc.add(dto);
			}
			
			rs.close();
			ps.close();
			conn.close();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listc;
	}
	
	
	public J02_BoardDto readOne(String rcv) {
		
		J02_BoardDto dto = null;
		
		int num = Integer.parseInt(rcv);
		
		try {
		
			Connection conn = DBConn.getConnection();
		
			String sql = "select * from m_board where num=?";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, num);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				dto = new J02_BoardDto();
				dto.setNum(rs.getInt("num"));
				dto.setTitle(rs.getString("title"));
				dto.setWriter(rs.getString("writer"));
				dto.setContents(rs.getString("contents"));
				dto.setViewcnt(rs.getInt("viewcnt"));
				dto.setOpen(rs.getString("open"));
				dto.setRegDate(rs.getDate("regdate"));
			}
				
			rs.close();
			ps.close();
			conn.close();
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return dto;
	}
	
	
	
}









