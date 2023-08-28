<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("UTF-8");
 %>
 <jsp:useBean id="m" class="net.daum.vo.MemVO"></jsp:useBean>
 <%--jsp:useBean 액션태그로 MemVO빈클래스의 객체명 m을 생성한다. --%>
 
 <jsp:setProperty name="m" property="*" />
 <%--값 저장 액션태그이다. property 속성값으로 *으로 처리하면 파라미터 이름 -> 빈클래스 변수명 자동 대입 --%>

 ID: <jsp:getProperty property="id" name="m"/> <hr>
 	<%--값 변환 액션태그. property속성값 id는 MemVO 빈클래스의 변수명이 된다.  ( Java: m.getId() ) --%>
 	
PW: <jsp:getProperty property="pwd" name="m"/> <hr>
NAME: <%=m.getName()%> <hr>
EMAIL: <%=m.getEmail()%> <hr>
<a href="jsp18_memberJoin.jsp">Register</a>