1. sql 코드
/*
[Entities]
- User
- Product

[User Properties]
- user_id (INT)
- name (TEXT)
- email (TEXT)
- join_date (DATE)
- points (INT)

[Product Properties]
- product_id (INT)
- product_name (TEXT)
- category (TEXT)
- price (INT)
- stock (INT)
*/

-- 1. 테이블 생성 (CREATE TABLE)
CREATE TABLE User (
    user_id INT PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT,
    join_date DATE,
    points INT
);

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT,
    price INT,
    stock INT
);

-- 2. 데이터 삽입 (INSERT INTO)
-- 회원 데이터
INSERT INTO User (user_id, name, email, join_date, points) 
VALUES (1, '김철수', 'chulsoo@example.com', '2026-01-10', 500);

INSERT INTO User (user_id, name, email, join_date, points) 
VALUES (2, '이영희', 'younghee@example.com', '2026-02-15', 1200);

-- 상품 데이터
INSERT INTO Product (product_id, product_name, category, price, stock) 
VALUES (101, '기계식 키보드', '전자기기', 89000, 15);

INSERT INTO Product (product_id, product_name, category, price, stock) 
VALUES (102, '무선 마우스', '전자기기', 45000, 30);

INSERT INTO Product (product_id, product_name, category, price, stock) 
VALUES (103, '에코백', '잡화', 15000, 100);


-- 3. 데이터 조회 (SELECT)
-- 모든 상품 목록 확인
SELECT * FROM Product;

-- 4. 조건 검색 (WHERE)
-- 가격이 50,000원 이상인 상품만 조회
SELECT product_name, price 
FROM Product 
WHERE price >= 50000;

-- 5. 데이터 정렬 (ORDER BY)
-- 회원들을 가입일 순서대로 정렬
SELECT * FROM User 
ORDER BY join_date ASC;

2. 간단한 설명
[시스템 선택]
시스템 명: 간단한 온라인 쇼핑몰 관리 시스템

[요구사항 정의]
회원 관리: 쇼핑몰에 가입한 회원의 이름, 이메일, 가입일, 포인트를 저장한다.
상품 관리: 판매하는 상품의 이름, 카테고리, 가격, 재고량을 저장한다.
상품 검색: 특정 카테고리(예: '전자기기')에 속한 상품들만 조회할 수 있어야 한다.
가격 필터링: 가격이 50,000원 이상인 고가 상품들을 별도로 검색할 수 있어야 한다.
회원 정렬: 가입한 회원들을 가입일 순서대로 정렬하여 확인할 수 있어야 한다.

[데이터 설계 (Entities & Properties)]
User (회원)
user_id (INT, 기본키)
name (TEXT)
email (TEXT)
join_date (DATE)
points (INT)
Product (상품)
product_id (INT, 기본키)
product_name (TEXT)
category (TEXT)
price (INT)
stock (INT)