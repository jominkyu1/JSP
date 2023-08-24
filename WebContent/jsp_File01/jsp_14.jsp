<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 디렉티브 실습 예제</title>
</head>
<body>
	<%
		int number=10;
	%>
	
	<%@ include file="included2.jspf" %> 
	<%--포함되어질 파일의 확장자를 .jspf로하면 소스 코드 조각 파일이다라는 의미
		다만 잘 사용하지않음. jsp로 불러오는것이 좋음--%>
	
	공통 변수 dataFolder : <%=dataFolder%>
</body>
</html>