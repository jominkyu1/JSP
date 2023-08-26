<%@page import="util.Cookies"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  	<%
  		Cookie cookie = Cookies.createCookie("auth", "", "/", 0);
  		response.addCookie(cookie);
  	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2>Cookie를 통해 Logout처리</h2>
</body>
</html>