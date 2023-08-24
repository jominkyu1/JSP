<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h3>HTML과 JSP 스크립트 코드가 혼합된 것 보다 스크립트 릿으로만 된것이 더 가독성이 좋다.</h3>
	<% int grade = 13; %>
	
	<% if(grade>15){ %>
		A학점입니다.
	<% } else {  %>
		B학점입입니다.
	<% } %>
	
	<hr>
	
	<%
		if(grade>10){
			out.println("<strong>A학점</strong>");
		} else {
			out.println("<strong>B학점</strong>");
		}
	%>
</body>
</html>