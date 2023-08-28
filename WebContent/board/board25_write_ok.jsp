<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");

	String bname = request.getParameter("bname");
	String btitle = request.getParameter("btitle");
	String bcont = request.getParameter("bcont");
	
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	//오라클 접속주소
	String user = "night";
	String pwd = "123456";
	
	Connection con = null;
	PreparedStatement ps = null;
	String sql = null;
	
	try {
		Class.forName(driver);
		con = DriverManager.getConnection(url, user, pwd);
		sql = "insert into boardT (bno, bname, btitle, bcont) values (bno_seq25.nextval, ?, ?, ?)";
		ps = con.prepareStatement(sql);
		
		ps.setString(1, bname);
		ps.setString(2, btitle);
		ps.setString(3, bcont);
	
		int result = ps.executeUpdate();
		
		if(result == 1 ){
			out.println("<script>");
			out.println("alert('게시글 작성 성공')");
			out.println("location='board_list.jsp'");
			out.println("</script>");
		}
	} catch (Exception e){
		e.printStackTrace();
	} finally {
		try {
			if(ps != null) ps.close();
			if(con != null) con.close();
		} catch (Exception e){
			e.printStackTrace();
		}
	}
%>