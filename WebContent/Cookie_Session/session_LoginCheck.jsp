<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = (String) session.getAttribute("id");
    	boolean re = (id != null)? true : false ;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2> 세션 로그인 여부 검증 </h2>
	<%
		if(re==true) {
			out.println(id + "님 로그인 된 상태");
		} else {
			out.println("로그아웃된 상태");
		}
	%>
</body>
</html>