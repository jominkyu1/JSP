package net.daum.dao;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import net.daum.vo.BoardVO;

public class BoardDAOImpl extends DAOController {
	String sql = null;
	
	public List<BoardVO> getBoardList(){
		List<BoardVO> blist = new ArrayList<>();
		
		try {
			sql = "select * from boardT order by bno desc";
			ps = connectInit(sql);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				BoardVO bv = new BoardVO();
				
				bv.setBno(rs.getInt("bno"));
				bv.setBname(rs.getString("bname"));
				bv.setBtitle(rs.getString("btitle"));
				bv.setBcont(rs.getString("bcont"));
				bv.setBhit(rs.getInt("bhit"));
				bv.setBdate(rs.getNString("bdate"));
				
				blist.add(bv);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			connectClose();
		}
		return blist;
	} //method getBoardList
	
	public void updateHit(int bno) {
		try {
			sql = "update boardT set bhit = bhit+1 where bno = ?";
			ps = connectInit(sql);
			ps.setInt(1, bno);
			Long i = ps.executeLargeUpdate(); // 업데이트 성공한 레코드 행의 개수를 반환
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			connectClose();
		}
	} //method updateHit
	
	public BoardVO getBoardCont(int bno) {
		BoardVO b=null;
		
		try {
			sql = "select * from boardT where bno=?";
			ps = connectInit(sql);
			ps.setInt(1, bno);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				b = new BoardVO();
				b.setBno(rs.getInt(1));
				b.setBname(rs.getString(2));
				b.setBtitle(rs.getString(3));
				b.setBcont(rs.getString(4));
				b.setBhit(rs.getInt(5));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			connectClose();
		}
		
		return b;
	}//method getBoardCont
	
	public int editBoard(BoardVO b) {
		try {
			sql = "update boardT set bname=?, btitle=?, bcont=? where bno=?";
			
			ps = connectInit(sql);
			ps.setString(1, b.getBname());
			ps.setString(2, b.getBtitle());
			ps.setString(3, b.getBcont());
			ps.setInt(4, b.getBno());
			
			return ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			connectClose();
		}
		
		return -1;
	}
	
	public int delBoard(int bno) {
		try {
			sql = "delete from boardT where bno=?";
			ps = connectInit(sql);
			ps.setInt(1, bno);
			return ps.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			connectClose();
		}
		return -1;
	}
}
