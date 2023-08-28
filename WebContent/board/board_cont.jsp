<%@page import="net.daum.vo.BoardVO"%>
<%@page import="net.daum.dao.BoardDAOImpl"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
		int bno = Integer.parseInt( request.getParameter("bno") ); //GET방식으로 전달된 쿼리파라미터
		BoardDAOImpl bdao = new BoardDAOImpl();
		bdao.updateHit(bno);
		
		BoardVO bc = bdao.getBoardCont(bno);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 내용</title>
</head>
<body>
<table border="1">
	<tr>
		<th colspan="2">게시판 내용보기</th>
	</tr>
	<tr>
		<th>제목</th> <td><%=bc.getBtitle()%></td>
	</tr>
	<tr>
		<th>내용</th> <td><%=bc.getBcont().replace("\n", "<br>")%></td>
		<%-- textarea에서 엔터키를 친 부분을 줄바꿈 해줌. --%>
	</tr>
	<tr>
		<th>조회수</th> <td><%=bc.getBhit()%></td>
	</tr>
	<tr>
		<th colspan="2">
			<input type="button" value="수정" onclick="location='board25_edit.jsp?bno=<%=bc.getBno()%>'";>
			<input type="button" value="삭제" onclick="location='board25_del.jsp?bno=<%=bc.getBno()%>'">
			<input type="button" value="목록" onclick="location='board_list.jsp';">
		</th>
	</tr>
</table>
</body>
</html>