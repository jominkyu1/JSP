<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = request.getParameter("id2"); //id2의 쿼리파라미터를 받아옴
    	
    	if(id != null && id.equals("admin")){
    		response.sendRedirect("index.jsp?id=" + id);  //GET방식으로 전달
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

</body>
</html>