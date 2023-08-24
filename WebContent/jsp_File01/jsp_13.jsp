<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2> jsp:include 액션 태그 하위의 jsp:param 태그 실습 </h2>
	<table width="100%" border="1">
		<tr>
			<th>제품 번호</th>
			<td>xxxx번호</td>
		</tr>
		<tr>
			<th>상품가격</th>
			<td>10,000원</td>
		</tr>
	</table>
	
	<hr>
	<%-- 포함되어지는 파일 --%>
	<jsp:include page="included.jsp" flush="false">
		<jsp:param name="type" value="A" />
	</jsp:include>
	<%--type 네임파라미터 이름에 A담아서 전달 --%>
</body>
</html>