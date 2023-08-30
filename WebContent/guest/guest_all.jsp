<%@page import="net.daum.vo.GuestVO"%>
<%@page import="java.util.List"%>
<%@page import="net.daum.dao.DAOMyBatis"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	DAOMyBatis myBatis = new DAOMyBatis();
    	myBatis.init();
    	
    	List<GuestVO> list = myBatis.getAllList();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h2> MyBatis를 이용한 모든 방명록의 제목 불러오기! </h2>3
<%
	for( GuestVO g : list){	
%>
	제목: <%=g.getGtitle()%> <br>
<%}%>
</body>
</html>