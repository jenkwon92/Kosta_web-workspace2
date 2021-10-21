CREATE TABLE mvc_member(
	id varchar2(100) PRIMARY KEY,
	password varchar2(100) NOT NULL,
	name varchar2(100) NOT NULL,
	address varchar2(100) NOT NULL,
	birthday date NOT NULL,
	regdate date NOT NULL
)

SELECT * FROM mvc_member;

SELECT name,address,TO_char(birthday,'YYYY-MM-DD'),regdate FROM mvc_member where id=

insert into mvc_member(id,password, name,address,birthday,regdate) values('silverkay','1234','권용은','서울',sysdate,sysdate);