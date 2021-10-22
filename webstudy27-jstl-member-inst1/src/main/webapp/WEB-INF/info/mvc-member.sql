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

select * from mvc_member;

select id,name,address,to_char(birthday,'YYYY.MM.DD'),to_char(regdate,'YYYY.MM.DD HH24:MM:SS')
from mvc_member
where id='java';

SELECT name,address, to_char(birthday,'YYYY.MM.DD') FROM mvc_member WHERE id='java' and password=1234;