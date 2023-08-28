<%@page import="net.daum.dao.BoardDAOImpl"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	int bno = Integer.parseInt(request.getParameter("bno"));
    	BoardDAOImpl bdao = new BoardDAOImpl();
    	
    	int result = bdao.delBoard(bno);
    	
    	if(result==1) {
    		out.println("<script>");
    		out.println("alert('게시글 삭제 성공')");
    		out.println("location='board_list.jsp'");
    		out.println("</script>");
    	} else {
    		out.println("<script>");
    		out.println("alert('게시글 삭제 실패')");
    		out.println("location='board_list.jsp'");
    		out.println("</script>");
    	}
    %>