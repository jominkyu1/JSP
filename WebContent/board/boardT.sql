--boardT 테이블 생성

create table boardT (
    bno number(38) primary key -- 게시판번호 PK
    , bname varchar2(100) not null 
    , btitle varchar2(200) not null
    , bcont varchar(4000) not null
    , bhit number(38) default 0 -- 기본값 0
    , bdate date default sysdate -- 기본값 현재날짜
);

SELECT * from boardT order by bno desc;
 
--bno_seq25 sequence
create sequence bno_seq25 start with 1 INCREMENT by 1 nocache;

--bno_seq25 시퀀스 다음 번호 확인
select bno_seq25.nextval from dual;

