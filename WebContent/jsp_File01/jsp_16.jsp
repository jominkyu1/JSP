<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2>jsp:forward 액션태그 실습</h2>
	
	<form action="view.jsp"> <%--method 속성을 생략하면 GET 방식 --%>
		<select name="code">
			<option value="A"> A 페이지 </option>
			<option value="B"> B 페이지 </option>
			<option value="C"> C 페이지 </option>
		</select>
		
		<input type="submit" value="이동">
	</form>
</body>
</html>