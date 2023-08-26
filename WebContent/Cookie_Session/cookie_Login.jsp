<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title></title>
</head>
<script>
	function login_check() {
		if( $.trim( $('#id').val() ) == '' ){
			alert('아이디를 입력하세요');
			$('#id').val('').focus();
			return false;
		}
	}
</script>
<body>
	<h2>쿠키 로그인 폼</h2>
	<form method="post" action="cookie_LoginOK.jsp" onsubmit="return login_check();">
	id: <input type="text" id="id" name="id"><hr>
	pw: <input type="password" id="pwd" name="pwd"><hr>
	<button type="submit">Submit</button>
	</form>
</body>
</html>