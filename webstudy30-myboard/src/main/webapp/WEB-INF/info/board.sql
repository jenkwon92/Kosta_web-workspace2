CREATE TABLE board_member(
	id VARCHAR2(100) PRIMARY KEY,
	password VARCHAR2(100) NOT NULL,
	name VARCHAR2(100) NOT NULL
)

INSERT INTO board_member(id,password, name) VALUES('java','a','아이유');
INSERT INTO board_member(id,password, name) VALUES('spring','a','강하늘');

SELECT * FROM board_member;

CREATE TABLE board (
	no NUMBER PRIMARY KEY,
	title VARCHAR2(100) NOT NULL,
	content CLOB NOT NULL,
	hits NUMBER DEFAULT 0,
	time_posted DATE NOT NULL,
	id VARCHAR2(100) NOT NULL,
	CONSTRAINT myboard_fk FOREIGN KEY(id) REFERENCES board_member(id)
)

CREATE SEQUENCE board_seq NOCACHE;

INSERT INTO board(no,title,content,hits,time_posted, id) VALUSE(board_seq.NEXTVAL, '불금','즐거운 공부시간', SYSDATE,'java');
INSERT INTO board(no,title,content,hits,time_posted, id) VALUSE(board_seq.NEXTVAL, '즐주말','즐거운 주말', SYSDATE,'spring');

COMMIT
