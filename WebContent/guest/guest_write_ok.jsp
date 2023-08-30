<%@page import="net.daum.dao.GuestDAOImpl"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="guest" class="net.daum.vo.GuestVO" />
<jsp:setProperty name="guest" property="*" />

<%

	GuestDAOImpl gdao = new GuestDAOImpl();
	
	int result = gdao.insertGuest(guest);
	
	if(result == 1) {
		out.println("<script>");
		out.println("alert('방명록이 작성되었습니다.')");
		out.println("location='/Jsp01/board/board_cont.jsp?bno=" + guest.getGno() + "'");
		out.println("</script>");
	}
%>

