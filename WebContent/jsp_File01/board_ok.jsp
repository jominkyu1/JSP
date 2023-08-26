<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String title = request.getParameter("title");
	String content = request.getParameter("content");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<table border="1">
	<tr>
		<th>제목</th> <td><%=title %></td>
	</tr>
	<tr>
		<th>내용</th> <td><%=content %></td>
	</tr>
	<tr>
		<th colspan="2"><button onclick="location='jsp19_boardWrite.jsp'">Move</button></th>
	</tr>
	</table>
</body>
</html>