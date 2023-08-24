<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2>이름과 주소 취미 입력 폼</h2>
	<form method="post" action="jsp06_ok.jsp">
	이름: <input type="text" name="name"> <br><br>
	주소: <input type="text" name="address"><br><br>
	좋아하는 취미: <input type="checkbox" name="hobby" value="여행"> 여행
						<input type="checkbox" name="hobby" value="등산"> 등산
	<button type="submit" value="확인">확인</button>
	</form>
</body>
</html>