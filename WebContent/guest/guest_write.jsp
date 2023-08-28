<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%-- 문제 겸 과제물) 
	1. 방명록 글쓴이, 글제목, 글내용을 입력할 수 있는 폼 입력창 guest_write.jsp를 작성하고,
		유효성 검증처리를 jQuery, JavaScript를 사용하여 처리한다.
		
	2. net.daum.vo패키지에 네임 파라미터이름 gname, gtitle, gcont와 일치하는 변수명을 가진
		데이터 저장빈 클래스 GuestVO.java를 작성한다.
		GuestVO.java의 멤버변수
		private int gno;
		private String gname;
		private String gtitle;
		private String gcont;
		private String gdate;
		
	3. 다음과같은 컬럼구조 tbl_guest25 테이블작성
	
	컬럼명	자료형	크기	제약조건
	gno		number	38		pk
	gname	varchar2	100	nn
	gtitle		varchar2	200	nn
	gcont		varchar2	4000	nn
	gdate		date				n
	
	
	4. 시퀀스는 bno_seq25그대로 사용
	5. jsp:useBean 액션태그를 사용하여 방명록을 저장하는 guest_ok.jsp를 작성한다
	6. 방명록 목록보기 guest_list.jsp를 작성한다.
	7. net.daum.dao패키지에 오라클 DB연동 클래스 Guest24DAOImpl.java를 작성 
	
	방명록 저장 메서드 public int insertGuest(GuestVO g){}
	방명록 목록 메서드 public list<GuestVO> getGuList(){}
 --%>
</body>
</html>