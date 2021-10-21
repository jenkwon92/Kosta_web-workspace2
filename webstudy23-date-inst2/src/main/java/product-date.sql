/*
 		MVC + Front Controller 상에서 date 형을 이용해 프로그래밍 연습을 하기 위한 테이블  
 */
create table mvc_product(
	id number primary key,
	name varchar2(100) not null,
	maker varchar2(100) not null,
	price number not null,
	regdate date not null
)
create sequence mvc_product_seq;
-- create sequence mvc_product_seq nocache; 
insert into mvc_product(id,name,maker,price,regdate) values(mvc_product_seq.nextval,'갤럭시21','삼성',100,sysdate);

commit

select * from mvc_product;

-- to_char() 를 이용해 select 테스트 
-- sample : SELECT TO_CHAR(SYSDATE,'YYYY-MM-DD HH24:MI:SS') FROM DUAL;
select name,maker,price,to_char(regdate,'YYYY-MM-DD HH24:MI:SS') from mvc_product where id=1;


-- product list sql 
select name,maker,to_char(regdate,'YYYY.MM.DD') from mvc_product order by id desc;

























