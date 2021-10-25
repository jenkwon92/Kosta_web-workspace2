drop table mvc_member;

create table mvc_member(
	id varchar2(100) primary key,
	password varchar2(100) not null,
	name varchar2(100) not null,
	address varchar2(100) not null,
	birthday date not null,
	regdate date not null
)
insert into mvc_member(id,password,name,address,birthday,regdate)
values('java','a','아이유','오리',to_date('2001-10-21','YYYY-MM-DD'),sysdate)

insert into mvc_member(id,password,name,address,birthday,regdate)
values('java2','a','강하늘','오리',to_date('1993-10-22','YYYY-MM-DD'),sysdate)

insert into mvc_member(id,password,name,address,birthday,regdate)
values('java3','a','이강인','오리',to_date('2003-05-21','YYYY-MM-DD'),sysdate)

select * from mvc_member;

-- findMemberById
select id,name,address,to_char(birthday,'YYYY.MM.DD'),to_char(regdate,'YYYY.MM.DD HH24:MM:SS')
from mvc_member where id='java';

-- login sql : id와 password가 일치할때만 조회가 된다 
select name,address,to_char(birthday,'YYYY.MM.DD') from mvc_member where id='java' and password='a1';

-- findMemberListByAddress 
select id,name,to_char(birthday,'YYYY.MM.DD') from mvc_member where address='오리'

select * from MVC_MEMBER;
-- update member 
update mvc_member set password='b',name='강하늘2',address='판교',birthday=to_date('2021-10-22','YYYY-MM-DD')  where id='java2';


-- id 중복확인 , 존재하면 1 , 없으면 0 
select count(*) from mvc_member where id='java'; 
select count(*) from mvc_member where id='java7';





























