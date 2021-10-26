/*
		부서테이블과 사원테이블 분리
		부서테이블 :  부모테이블, 참조대상이 되는 테이블
		사원테이블 : 자식테이블, 참조하는 테이블
		
		부서 테이블 ------0|<-- 사원 테이블
		
		사원테이블에서 부서테이블을 참조할 수 있도록 Foreign key 설정
		사원정보가 저장될 때 부서테이블에 존재하는 부서번호로만 등록될 수 있도록 한다 (참조 무결성)
*/
CREATE TABLE mvc_department(
	deptno NUMBER PRIMARY KEY,
	dname VARCHAR2(100) NOT NULL,
	loc VARCHAR2(100) NOT NULL,
	tel VARCHAR2(100) NOT NULL
)

INSERT INTO mvc_department(deptno, dname, loc,tel) VALUES(10,'전략기획','오리','031');
INSERT INTO mvc_department(deptno, dname, loc,tel) VALUES(20,'공공사업','종로','02');
INSERT INTO mvc_department(deptno, dname, loc,tel) VALUES(30,'연구개발','판교','033');

SELECT * FROM mvc_department;

CREATE TABLE mvc_employee(
	empno NUMBER PRIMARY KEY,
	ename VARCHAR2(100) NOT NULL,
	sal NUMBER NOT NULL,
	deptno NUMBER NOT NULL,
	CONSTRAINT fk_mvc_departno FOREIGN KEY(deptno) REFERENCES mvc_department(deptno)
)
--constraint (제약조건 키워드) fk_mvc_deptno(제약조건명: 유일해야) foreign key(현 테이블 컬럼) references 참조대상 테이블 or 부모테이블(참조할 컬럼)

--error : parent key not found 참조 무결성 제약 조건 위해(부서 테이블에 존재하지 않는 부서번호로 insert 하려고 했으므로 error)
INSERT INTO mvc_employee(empno, ename, sal,deptno) VALUES(1, '아이유',400,500);
-- 부서 테이블에 존재하는 부서번호로 등록했으므로 정상수행
INSERT INTO mvc_employee(empno, ename, sal,deptno) VALUES(1, '아이유',400,10);
INSERT INTO mvc_employee(empno, ename, sal,deptno) VALUES(2, '박보검',300,10);
INSERT INTO mvc_employee(empno, ename, sal,deptno) VALUES(3, '강하늘',600,20);

commit

SELECT e.empno, e.ename, e.sal,d.dname, d.loc FROM mvc_employee e, mvc_department d WHERE e.deptno=d.deptno ORDER BY e.empno DESC


