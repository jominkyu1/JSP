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


create table tbl_guest25 (
    gno number(38) references boardT(bno) on delete cascade
    , gname varchar2(100) not null
    , gtitle varchar2(200) not null
    , gcont varchar2(4000) not null
    , gdate date default sysdate
    );
    

select * from tbl_guest25;

insert into tbl_guest25 values (3, '홍길순', 'G제목2', 'G내용2', sysdate);
insert into tbl_guest25 (gno, gname, gtitle, gcont) values (3, '테스트이름', '테스트제목', '테스트내용');

select * from boardT join tbl_guest25 on boardt.bno = tbl_guest25.gno;
select * from tbl_guest25 where gno = 3;
commit;
    