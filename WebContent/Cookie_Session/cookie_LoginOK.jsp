<%@page import="java.util.Enumeration"%>
<%@page import="util.Cookies" %>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("UTF-8");
    
		String id = request.getParameter("id");
    	String pwd = request.getParameter("pwd");
    	
    	if(id.equals(pwd)){ // 아이디와 비밀번호가 같으면 로그인 성공
    		Cookie cookie = Cookies.createCookie("auth", id, "/", -1); 
    		// maxAge = -1 이면 브라우저 종료시 쿠키삭제
    		response.addCookie(cookie);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2> 로그인에 성공 했습니다. 쿠키 추가 완료 </h2>
</body>
</html>
<%
    	} else {
%>
	<script>
		alert('로그인에 실패했습니다.!');
		history.back(); 
		// 자바크스크립트에서 history 객체는 이전주소 정보를 담고있다. back 메서드는 이전 주소로 이동 go(-1) 메서드와 기능이 같음.
	</script>
	
<% } %>