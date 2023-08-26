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
	function loginCheck(){
		if($.trim($("#login_id").val()) == ''){
			alert('로그인 아이디를 입력하세요')
			$("#login_id").val('').focus();
			return false;
		}
	}
</script>
<body onload="$('#login_id').focus();"> 
<%--onload이벤트는 웹 페이지 시작과 동시에 발생 --%>
<h2>Session 로그인 폼</h2>
<form method="post" action="session_LoginOK.jsp" onsubmit="return loginCheck();">
	login_id: <input type="text" name="login_id" id="login_id">
	login_pwd: <input type="text" name="login_pwd" id="login_pwd">
	<button type="submit">Submit</button>
</form>
</body>
</html>