/*
[Entities / 개체]
- Professor

[Properties / 속성]
- id			(BIGSERIAL)
- name 			(VARCHAR(30))
- dept 			(VARCHAR(50))
- salary 		(NUMERIC)
- salart_level 	(NUMERIC)
- hire_date 	(DATE)
*/

CREATE TABLE prof (
	id bigserial,
	name varchar(30),
	dept varchar(50),
	salary numeric,
	salart_level numeric,
	hire_date date
);

TABLE prof;

-- 데이터 삽입하기
INSERT INTO prof (name, dept, salary, salart_level, hire_date)
VALUES
	('김정은', '컴퓨터공학', 100000, 2, '1998-12-13'),
	('유가공', 'AI공학', 300000, 2, '1988-3-1'),
	('호날두', '정보통신학과', 500000, 2, '1970-8-11'),
	('유기물', '간호학과', 700000, 2, '2002-10-19'),
	('유청균', '소프트웨어', 900000, 2, '1999-2-14');

-- 데이터 검색하기
SELECT * FROM prof;

SELECT name, salary FROM prof;

SELECT name, salary FROM prof ORDER BY salary DESC; -- ASC

SELECT name, salary FROM prof WHERE salary > 500000;

SELECT name, salary FROM prof WHERE name LIKE '유%'; -- PostgreSQL ILIKE 대/소문자 상관 없다

SELECT name, dept FROM prof
	WHERE dept LIKE '%공%'
	ORDER BY dept DESC;

SELECT name, salary from prof where between 70001 and 89999;