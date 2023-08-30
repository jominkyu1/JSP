package net.daum.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DAOController {

	protected String driver = "oracle.jdbc.OracleDriver";
	protected String url = "jdbc:oracle:thin:@localhost:1521:xe";
	protected String user = "night";
	protected String pwd = "123456";
	protected Connection con = null;
	protected PreparedStatement ps = null;
	protected ResultSet rs = null;

	public DAOController() {
		super();
	}

	protected void connectClose() {
		try {
			if(ps != null) ps.close();
			if(con != null) con.close();
			if(rs != null) rs.close();
		} catch (Exception e){
			e.printStackTrace();
		}
	}

	protected PreparedStatement connectInit(String sql) {
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, pwd);
			return con.prepareStatement(sql);
		}catch (Exception e) {
			e.printStackTrace();
		} 
		return null;
	}

}