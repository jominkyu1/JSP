<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("UTF-8");
    
    	String id = request.getParameter("login_id");
    	String pass = request.getParameter("login_pwd");
    	
    	if(id.equals(pass)){ // ID = PWD 로그인 인증된것으로 판단
    		session.setAttribute("id", id); // 세션(서버사이드)에 id저장
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2> Session 로그인 성공 </h2>
	<%
		String str = (String) session.getAttribute("id");
		out.println("ID--> " + str);
	%>
</body>
</html>
<%
    	} else {
  			out.println("<script> alert('로그인 실패'); history.go(-1); </script>");	
    	}
%>