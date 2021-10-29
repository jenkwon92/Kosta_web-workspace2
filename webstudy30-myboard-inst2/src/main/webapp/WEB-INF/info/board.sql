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





