<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- jsp 주석문 기호, %@ 지시자 또는 디렉티브라고한다. 어떤 페이지에 대한 정의문을 내릴때 사용. --%>
    
<%
//이 영역을 jsp에서는 스크립트 릿이라고 한다. 주로 자바 언어 문법을 따라가고 주석문 기호도 동일

	String bookTitle="jsp 서버 웹 프로그래밍";
	String author="홍길동";
%>

교재명: <%=bookTitle%> <hr>
저자명: <%=author%> <hr>
<%-- 
	%=는 jsp 문법에서 표현식이라고 한다. 주로 출력 용도로 활용.
	숫자를 출력해도 문자열로 인식되어서 출력됨.
	
	jsp스크립트 요소 종류:
		선언문 (<%! %>)은 주로 변수와 메서드 선언용도로 활용.
--%>