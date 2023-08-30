package net.daum.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import net.daum.vo.GuestVO;

public class GuestDAOImpl extends DAOController implements GuestMapper{
	String sql = null;
	
	public int insertGuest(GuestVO g) {
		int result = -1;
		sql = "insert into tbl_guest25 (gno, gname, gtitle, gcont) values (?, ?, ?, ?)";
		ps = connectInit(sql);
		
		try {
			ps.setInt(1, g.getGno());
			ps.setString(2, g.getGname());
			ps.setString(3, g.getGtitle());
			ps.setString(4, g.getGcont());
			
			ps.execute();
			result = 1;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			connectClose();
		}
		
		return result;
	}
	

	public List<GuestVO> getGuList(int bno){
		List<GuestVO> list = new ArrayList<>();
		
		sql = "select * from tbl_guest25 where gno = ? order by gdate desc";
		ps = connectInit(sql);
		
		try {
			ps.setInt(1, bno);
			rs = ps.executeQuery();
			
		while(rs.next()) {
				GuestVO g = new GuestVO();
				g.setGcont(rs.getString("gcont"));
				g.setGdate(rs.getString("gdate"));
				g.setGname(rs.getString("gname"));
				g.setGno(rs.getInt("gno"));
				g.setGtitle(rs.getString("gtitle"));
				
				list.add(g);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			connectClose();
		}
		return list;
	}

	@Override
	public List<GuestVO> getAllList() {
		// TODO Auto-generated method stub
		return null;
	}
}
