<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String code = request.getParameter("code");
	String url=null;
	
	if(code.equals("A")){
		url="a.jsp";
	}else if(code.equals("B")){
		url="b.jsp";
	}else {
		url="c.jsp";
	}
%>
<jsp:forward page="<%=url %>" />
<%-- 포워딩 --%>