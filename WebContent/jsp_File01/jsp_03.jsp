<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2>JSP 스크립트 요소인 스크립트 릿과 표현식</h2>
	<%
		int sum=0;
		for(int i=1; i<=10; i++){
			sum += i;
		}
	%>
	<h3>1부터 10까지의 누적합은: <%=sum %></h3>
	<%
		sum=0;
		int i=11;
		while(i<=20){
			sum += i;
			i++;
		}
		out.println("<h3> 11부터 20까지의 누적 합은: " + sum + "</h3><hr>");
	%>
</body>
</html>