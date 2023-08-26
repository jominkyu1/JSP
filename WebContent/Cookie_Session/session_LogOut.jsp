<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	session.invalidate(); //세션 만료시키는 메서드
    	
    	out.println("<script> alert('세션 로그아웃되었습니다.'); location='session_LoginForm.jsp'; </script> ");
    %>