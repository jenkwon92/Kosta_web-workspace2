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

insert into mvc_product(id,name,maker,price,regdate) values(mvc_product_seq.nextval,'갤럭시21','삼성',100,sysdate);

commit

select * from mvc_product;

SELECT id,name,maker,price,TO_CHAR(regdate,'YYYY.MM.DD HH24:MI:SS') FROM mvc_product WHERE id=1;



