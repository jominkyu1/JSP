<%@page import="net.daum.dao.BoardDAOImpl"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	//POST로 전달된 한글이 깨지지 않게 인코딩함.
%>

<jsp:useBean id="board" class="net.daum.vo.BoardVO" />
<%-- jsp:useBean 액션태그로 BoardVO 빈클래스의 객체명 board 생성 --%>
<jsp:setProperty name="board" property="*" />
<%-- 네임파라미터 이름과 빈클래스 변수명이 같으면 property속성값 *로 처리해도 BoardVO의 값을 전부 가져옴 --%>

<%
	BoardDAOImpl bdao = new BoardDAOImpl();
	int re = bdao.editBoard(board);
	
	if(re==1){
		out.println("<script>");
		out.println("alert('게시글 수정 성공')");
		out.println("location='board_list.jsp'");
		out.println("</script>");
	}
%>