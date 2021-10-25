/*
 *	JOIN SQL -  여러 테이블을 결합하여 정보를 조회하기 위한 SQL
 *
 * 1. INNER JOIN - 일반적으로 조인이라고 하는 SQL을 의미 
 * 								조인 조건에 부합되는 행에 대해서만 조회
 * 								1) Equi Join - 조인 대상 테이블 간의 상응하는 컬럼 정보가 정확하게 일치하는 경우의 JOIN
 * 								2) Non Equi Join - 조인 대상 테이블 간의 상응하는 컬럼 정보가 없을 떄 사용하는 JOIN
 * 															테이블간의 컬럼 값들이 정확하게 일치하지 않을 때 사용하는 JOIN
 * 															(사원 테이블과 월급 등급 테이블간의 일치하는 컬럼은 없지만 사원의 월급 등급을
 * 																알기 위해 월급 등급 테이블의 hisal, losal 과 사원테이블의 sal을 비교)
 * 
 *2. OUTER JOIN - JOIN조건에 부합되지 않더라도 모든 행을 반환
 *								(부서 테이블과 사원 테이블 조인시 INNER JOIN 은 사원이 없는 부서는 제외
 *								Outer JOIN은 사원이 없는 부서라도 모두 조회)
 *
 *3. Self JOIN - 동일 테이블 상에서의 조인(사원테이블의 매니저 컬럼의 전보는 또 다른 사원 정보이다. 이를 이용해 
 *																	사원의 매니저인 사원번호, 사원명 들을 조회할 때 Self JOIN을 사용)* 
 */
--1. Inner Join 
--1) equi Join
--사원 정보 조회시 사원이 속한 부서 정보까지 함께 조회
SELECT e.empno, e.name, e.job, d.deptno, d.dname, d.loc
FROM emp e, dept d
WHERE e.deptno=d.deptno
--위의 sql을 아래와 같이 표현할 수도 있다
SELECT e.empno, e.name, e.job, d.deptno, d.dname, d.loc
FROM emp e 
INNER JOIN dept d ON e.deptno=d.deptno

--2) non equi Join
--사원 테이블 (emp) , 월급등급 테이블(salgrade)
--		sal						hisal		losal
-- 두테이블간의 연관성은 사원 테이블의 sal과 월급등금 테이블의hisal 최고액, losal 최저액 사이에 있다
SELECT * FROM emp WHERE ename='SMITH'; --sal 이 800

--Inner Join (non equi join)
SELECT e.empno, e.ename, s.grade
FROM emp e, salgrade s
WHERE e.sal>=s.losal and e.sal<=s.hisal
AND e.ename='SMITH'


/*
 * 		2.Outer Join : 일반적인 (Inner Join) 조건에 만족하지 않는 경우에도 조회하기 위해 사용
 * 								(부서와 사원 테이블 조인시 사원이 존재하지 않는 부서정보도 조회하기 위해 Outer Join을 이용)
 * 
 * 								JOIN 조건에 (+) 를 명시 -> 조인 시킬 값이 없는 측에 표기
 * 
 * 								SELECT COLUMN, COLUMN
 * 								FROM 	table1, table2
 *								WHERE table1.컬럼 (+) = table2.컬럼
 *
 *								SELECT colum, column
 *								FROM table1
 *								LEFT OUTER JOIN table2 on 컬럼=컬럼
 */
 SELECT DISTINCT deptno FROM dept;
 SELECT DISTINCT deptno FROM emp;
 
 --inner join : 조인하는 테이블 간의 컬럼값이 일치되지 않는 경우는 조회되지 않는다
--						즉 사원이 존재하는 40번 부서는 정보가 조회되지 않는다
SELECT e.empno , e.ename, e.deptno, d.deptno, d.dname
FROM dept d, emp e
WHERE d.deptno=e.deptno

--outer join : (+) outer join 기호는 데이터가 없는 측에 명시
-- 40 번 부서정보는 부서테이블에 존재 , 40번 부서에 속한 사원이 없으므로 사원테이블에 outer join 연산기호를 표시
-- outer join 을 실행한 결과를 보면 사원이 존재하지 않는 40 번 부서 정보까지 모두 조회가 된다
SELECT e.empno , e.ename, e.deptno, d.deptno, d.dname, d.loc
FROM dept d, emp e
WHERE d.deptno=e.deptno(+)

-- 아래와 같이 Outer Join을 표현할 수 있다
-- 왼쪽 테이블을 기준으로 오른쪽 테이블을 붙임
--결론은 , dept테이블 기준으로 emp테이블을 붙임
SELECT e.empno , e.ename, e.deptno, d.deptno, d.dname
FROM dept d
LEFT OUTER JOIN emp e ON d.deptno=e.deptno

-- 오른쪽테이블을 기준으로 왼쪽 테이블을 붙임
SELECT e.empno , e.ename, e.deptno, d.deptno, d.dname
FROM emp e
RIGHT OUTER JOIN dept d ON d.deptno=e.deptno
/*
 			3. Self Join : 테이블 자체에서 조인
 								동일한 테이블이지만 개념적으로 다른 정보를 결합 
 								사례 - 사원 테이블의 매니저 번호는 또 다른 사원의 사원번호이다
 										하나의 사원 테이블에서 사원 정보와 그 사원의 매니저 정보를 함께 조회하고자 할 때
 										self join을 이용한다
 */
SELECT * FROM emp;
--7902 사원의 매니저 번호는 7566 이고 7566은 또 다른 사원의 사원번호이다
SELECT empno,ename,mgr FROM emp WHERE empno=7902
SELECT empno,ename,mgr FROM emp WHERE empno=7566
SELECT empno,ename,mgr FROM emp WHERE empno=7839

-- 사원의 사원번호 empno, 사원명 ename, 매니저 번호 mgr , 매니저명 (다른 사원명) 을 조회하고자 한다 -> 이 때 self join을 이용

SELECT e.empno, e.ename, e.mgr, m.empno, m.ename
FROM	emp e, emp m 
WHERE	e.mgr = m.empno
AND e.empno = 7902

-- Inner Join : 13명 사원 정보가 조회 : mgr 이 없는 king 사원이 조회 대상에서 제외
SELECT e.empno, e.ename, e.mgr, m.empno, m.ename
FROM	emp e, emp m 
WHERE	e.mgr = m.empno

SELECT * FROM emp; --14명 사원

--Outer Join : 위의 Inner Join시 결과행은 13명이 조회된다. 이유는 mgr 이 없는 king 사원이
-- 제외되었기 때문
-- 매니저가 없는 사원까지 모두 조회하고자 할때 Outer Join을 이용한다
-- 사원정보는 존재하고 매니저 정보가 존재하지 않으므로 매니저 측에 Outer join 연산자(+) 를 명시하면 된다
SELECT e.empno, e.ename, e.mgr, m.empno, m.ename
FROM	emp e, emp m 
WHERE	e.mgr = m.empno(+)

--join sql 연습
--empno가 7369인 사원의 사원명  ename, 부서명 dname, 월급등급 grade, 매니저명 mgr 의 ename을 조회
--emp , dept, salgrade, emp manager
--Smith, research, ford,1
SELECT e.ename, e.ename, d.dname, s.grade, m.ename as mgr_name
FROM emp e, dept d, salgrade s, emp m
WHERE e.deptno=d.deptno
AND e.sal>=s.losal
AND e.sal<=s.hisal
AND e.mgr = m.empno
AND e.empno=7369

-- 사원의 사원명 ename, 부서 dname, 월급 등급 grade, 매니저명 mgr의 ename을 조회
-- 매니저가 없는 사원까지 모두 조회한다 (Outer join을 이용)
SELECT e.ename, e.ename, d.dname, s.grade, m.ename as mgr_name
FROM emp e, dept d, salgrade s, emp m
WHERE e.deptno=d.deptno
AND e.sal>=s.losal
AND e.sal<=s.hisal
AND e.mgr = m.empno(+)
