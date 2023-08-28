<%@page import="net.daum.vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="net.daum.dao.BoardDAOImpl"%>

<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	BoardDAOImpl bdao = new BoardDAOImpl();
    	List<BoardVO> blist = bdao.getBoardList(); //게시판 목록
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<table border="1">
	<thead>
		<tr><th colspan="5">게시판 목록보기</th></tr>
		<tr>
			<th>번호</th> <th>글제목</th> <th>글쓴이</th> <th>조회수</th> <th>등록날짜</th>
		</tr>
	</thead>
	
	<tbody>
	<%
		for(BoardVO b : blist){
	%>
	<tr>
		<td><%=b.getBno()%></td> <td><a href="board_cont.jsp?bno=<%=b.getBno()%>"><%=b.getBtitle()%></a></td> 
		<td><%=b.getBname()%></td><td><%=b.getBhit()%></td> <td><%=b.getBdate()%></td>
	</tr>
	<%}%>
	<tr>
		<td colspan="5" align="center"><input type="button" onclick="location='board25_write.jsp'" value="게시글 등록"></td>
	</tr>
	</tbody>
</table>
</body>
</html>