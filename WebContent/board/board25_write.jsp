<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>게시판 글쓰기 폼</title>
</head>
<script>
	function check(){
		if($.trim($('#bname').val()) == '' ){
			alert('글쓴이를 입력하세요.')
			$('#bname').val('').focus();
			return false;
		}
		
		if($.trim($('#btitle').val()) == '' ){
			alert('글제목을 입력하세요.')
			$('#btitle').val('').focus();
			return false;
		}
		
		if($.trim($('#bcont').val()) == '' ){
			alert('글내용을 입력하세요.')
			$('#bcont').val('').focus();
			return false;
		}
	}
</script>
<body>
	<form method="post" action="board25_write_ok.jsp" onsubmit="return check();">
	
		bname: <input type="text" name="bname" id="bname"><br>
		btitle: <input type="text" name="btitle" id="btitle"> <br>
		bcont: <textarea name="bcont" id="bcont" rows="15" cols="25"></textarea> <hr>
		
		<button type="submit">Submit</button><br>
		<button type="reset" onclick="$('#bname').focus();"	>Reset</button>
	</form>
</body>
</html>