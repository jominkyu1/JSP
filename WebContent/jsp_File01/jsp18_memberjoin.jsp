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
    function join_check(){
        if($.trim($("#id").val()).length == 0) {
        	alert('아이디를 입력하세요');
        	$('#id').val('').focus();
        	return false;
        }
        
        if($.trim($('#pwd').val())==''){
        	alert('비밀번호를 입력하세요');
        	$('#pwd').val('').focus();
        	return false;
        }
        
        $name = $.trim($('#name').val());
        if($name == ''){
        	alert('회원이름을 입력하세요.');
        	$('#name').val('').focus();
        	return false;
        }
        
        $email = $.trim($('#email').val());
        if($email.length == 0){
        	alert('이메일을 입력하세요!');
        	$('email').val('').focus();
        	return false;
        }
    }
</script>
<body>
	<h2> jsp:useBEAN 액션 태그 실습</h2>
	<form method="post" action="join_ok.jsp" onsubmit="return join_check();">
		id: <input type="text" name="id" id="id"><br>
		pw: <input type="password" name="pwd" id="pwd"><br>
		email: <input type="email" id="email" name="email"><br>
        name: <input type="text" id="name" name="name"><br>

        <input type="submit" value="가입">
        <input type="reset" value="reset">
	</form>
</body>
</html>