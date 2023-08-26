<%@page import="util.Cookies"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Cookies cookies = new Cookies(request);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2> 쿠키로 로그인 여부 검증 </h2>
	<%
		if(cookies.exists("auth")){
			out.println(cookies.getValue("auth") + "의 아이디로 로그인 됨.");
		} else {
			out.println("로그아웃된 상태");
		}
	%>
</body>
</html>