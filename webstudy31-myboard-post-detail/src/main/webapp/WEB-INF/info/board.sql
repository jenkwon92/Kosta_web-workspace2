create table board_member(
	id varchar2(100) primary key,
	password varchar2(100) not null,
	name varchar2(100) not null
)
insert into board_member(id,password,name) values('java','a','아이유');
insert into board_member(id,password,name) values('spring','a','강하늘');

select * from BOARD_MEMBER;

create table board(
	no number primary key,
	title varchar2(100) not null,
	content clob not null,
	hits number default 0,
	time_posted date not null,
	id varchar2(100) not null,
	constraint myboard_fk foreign key(id) references board_member(id)
)

create sequence board_seq nocache;

insert into board(no,title,content,time_posted,id) values(board_seq.nextval,'불금','즐거운 공부시간',sysdate,'java');

insert into board(no,title,content,time_posted,id) values(board_seq.nextval,'즐주말','즐거운 주말',sysdate,'spring');

commit

select * from board;

--게시물 리스트 조회 (no,title, writer(member의 name) ,content,time_posted,hits)
--writer는 회원명을 의미, board table과 board_member table을 조인(inner join)

SELECT b.no, b.title, m.name, to_char(b.time_posted,'YYYY.MM.DD'), b.hits
FROM board b , board_member m
WHERE b.id=m.id
ORDER BY b.no DESC

-- 로그인 sql : id와 password가 일치하지 않으면 정보 조회, 아니면 정보조회가 되지 않는다
SELECT name FROM board_member WHERE id='java' AND password='a'	;


