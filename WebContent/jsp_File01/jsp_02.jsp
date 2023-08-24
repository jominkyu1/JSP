<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%-- page import 속성을 사용하여 외부 패키지 API를 임포트한다. --%>

<%
//이 영역을 JSP 스크립트 요소에서 스크립트 릿이라고 한다. 스크립트릿에서는 자바 문법을 따라간다.
Calendar cal = Calendar.getInstance();

int hour = cal.get(Calendar.HOUR_OF_DAY);
int minute = cal.get(Calendar.MINUTE);
int second = cal.get(Calendar.SECOND);
%>

<%=hour%>시 <%=minute%>분 <%=second%>초 <hr>
<%--(%=)는 스크립트 요소에서 출력용도로 활용되는 표현식이라고 한다. --%>

