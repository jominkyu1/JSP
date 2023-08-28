<%@page import="net.daum.vo.BoardVO"%>
<%@page import="net.daum.dao.BoardDAOImpl"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	int bno = Integer.parseInt(request.getParameter("bno"));
    	BoardDAOImpl bdao = new BoardDAOImpl();
    	BoardVO eb = bdao.getBoardCont(bno);
    %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>게시판 글수정 폼</title>
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
	<form method="post" action="board25_edit_ok.jsp" onsubmit="return check();">
		<input type="hidden" name="bno" value="<%=bno%>"> <%-- 게시판 번호 히든값 --%>
		bname: <input type="text" name="bname" id="bname" value="<%=eb.getBname()%>"><br>
		btitle: <input type="text" name="btitle" id="btitle" value="<%=eb.getBtitle()%>"> <br>
		bcont: <textarea name="bcont" id="bcont" rows="15" cols="25"><%=eb.getBcont()%></textarea> <hr>
		
		<button type="submit">Submit</button><br>
		<button type="button" onclick="location='board_cont.jsp?bno=<%=bno%>'">Back</button>
	</form>
</body>
</html>