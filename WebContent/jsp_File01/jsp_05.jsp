<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2>Request JSP 내장객체 하위의 메서드를 활용해서 클라이언트와 서버 정보 확인</h2>

요청정보 프로토콜 (통신규약) : <%=request.getProtocol()%> <hr>
전송방식 : <%=request.getMethod()%> <hr> 
컨텍스 패스경로: <%=request.getContextPath()%> <hr>
서버이름: <%=request.getServerName()%> <hr>
서버포트번호: <%=request.getServerPort()%> <hr>