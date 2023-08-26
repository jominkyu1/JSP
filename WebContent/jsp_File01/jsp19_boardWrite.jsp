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
function check(){
    if($.trim($("#title").val()).length == 0) {
    	alert('title을 입력하세요');
    	$('#title').val('').focus();
    	return false;
    }
</script>
<body>
	<h2> 간단한 제목과 내용 입력 폼</h2>
	<form method="post" action="board_ok.jsp" onsubmit="return check();">
		title: <input type="text" name="title" id="title"> <hr>
		content: <textarea name="content" id="content" rows="10" cols="35"></textarea> <hr>
		<input type="submit" value="submit">
	</form>
</body>
</html>