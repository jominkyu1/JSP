<%@page import="net.daum.vo.GuestVO"%>
<%@page import="java.util.List"%>
<%@page import="net.daum.dao.GuestDAOImpl"%>
<%@page import="net.daum.vo.BoardVO"%>
<%@page import="net.daum.dao.BoardDAOImpl"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
		int bno = Integer.parseInt( request.getParameter("bno") ); //GET방식으로 전달된 쿼리파라미터
		BoardDAOImpl bdao = new BoardDAOImpl();
		bdao.updateHit(bno);
		
		BoardVO bc = bdao.getBoardCont(bno);
		
		//글의 방명록
		GuestDAOImpl gdao = new GuestDAOImpl();
		List<GuestVO> glist = gdao.getGuList(bno);
    %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>게시판 내용</title>
</head>
<style>
	table{
		margin-top: 20px;
	}
	table, table td, table th {
		border-collapse: collapse;
		border: 2px solid lightslategrey;
		font-weight: bolder;
		text-align: center;
	}

	table td, table th {
		padding: 10px;
	}

</style>
<script>
	function tableDisplay() {
		var tb = document.getElementById('gtable');
		tb.innerHTML= "작성된 방명록이 없습니다.";
	}
</script>
<%if(glist.size()==0){%>
	<body onLoad="tableDisplay();">		
<%} else { %>
	<body>
<%} %>

<table border="1" style="float:left; margin: 0 15px 0 20vw;">
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
	<tr>
		<td colspan="3" align="center" onclick="location='/Jsp01/guest/guest_write.jsp?bno=<%=bc.getBno()%>'"><input type="button" value="방명록 남기기"></td>
	</tr>
</table>
<table border="1" id="gtable" style="max-width: 50vw;">
		<tr>
			<th colspan="4">방명록</th>
		</tr>
		<tr>
			<th>이름</th> <th>제목</th> <th>내용</th> <th>등록날짜</th>
		</tr>
		<%
			for ( GuestVO g : glist ) {
		%>
		<tr>
			<td><%=g.getGname()%></td> <td><%=g.getGtitle()%></td> <td><%=g.getGcont().replace("\n", "<br>")%></td> <td><%=g.getGdate()%></td>
		</tr>
		<% }%>
</table>
</body>
</html>