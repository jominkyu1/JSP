<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Object time = request.getAttribute("time");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	Calendar c = (Calendar) time;
%>
현재 시간: <%=c.get(Calendar.HOUR)%> 시
</body>
</html>