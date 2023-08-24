<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	//JSP로 POST전송시 한글이  깨짐. 인코딩 설정 필요
	
	String name = request.getParameter("name");
	String addr = request.getParameter("address");
	String[] hobby = request.getParameterValues("hobby");
	//checkbox는 복수개의 값이 전달되기때문에 배열로 받는다.
	
	out.println(name + "님 <hr>");
	out.println("주소: " + addr + "<hr>");
	
	out.println("선택한 취미");
	
	if(hobby != null){
		for(String str : hobby){
			out.println("&nbsp;" + str);
			// &nbsp; 는 빈공백(tab)
		}
	}
%>