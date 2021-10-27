/*
	복합키 : 두 개 이상의 컬럼을 이용해 식별자(pk)를 만드는 것을 말한다
*/
CREATE TABLE shares(
	customer_id VARCHAR2(100),
	stock_id VARCHAR2(100),
	quantity NUMBER NOT NULL,
	CONSTRAINT pk_shares PRIMARY KEY(customer_id, stock_id)
)

INSERT INTO shares(customer_id, stock_id,quantity) VALUES('java','삼성',10);
INSERT INTO shares(customer_id, stock_id,quantity) VALUES('spring','삼성',5);
INSERT INTO shares(customer_id, stock_id,quantity) VALUES('java','LG',20);
-- 복합키의 제약조건에 위배되므로 error (customer_id와 stock_id의조합된 정보가 유일해야하는 조건이므로)
INSERT INTO shares(customer_id, stock_id,quantity) VALUES('java','삼성',5);
-- 위의 insert가 아니라 update quantity가 되어야 한다 
UPDATE shares SET quantity = quantity+5  WHERE customer_id='java' AND stock_id='삼성';