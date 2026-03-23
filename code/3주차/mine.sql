/*
[Entities]
- GAME_USers

[GAME_Users Properties]
- USer_id		(BIGSERIAL)
- Username 		(VARCHAR(30))
- Email			(VARCHAR(30))
- Status 		(VARCHAR(30))
- User_level	(INT DEFAULT 1)
- start_date 	(DATE)
*/

CREATE TABLE GAME_Users (
	USer_id bigserial,
	Username varchar(30),
	Email varchar(30),
	Status varchar(30),
	User_level INT DEFAULT 1,
	start_date date
);

TABLE GAME_Users;

-- 데이터 삽입하기
INSERT INTO GAME_Users (Username, Email, Status, User_level, start_date)
VALUES
	('DragonSlayer', 'dragon@mail.com', 'Active', '13', '2024-01-10'),
	('MagicMaster', 'mage@mail.com', 'Active', '15', '2024-02-15'),
	('SwiftShadow', 'rogue@mail.com', 'Inactive', '30', '2024-03-01'),
	('HealingGrace', 'support@mail.com', 'Banned', '5', '2023-11-20'),
	('Beginner99', 'newbie@mail.com', 'Active', '45', '2024-04-12');

-- 데이터 검색하기
SELECT * FROM game_users;

SELECT * FROM game_users 
ORDER BY user_level DESC;

SELECT * FROM game_users 
WHERE status = 'Active';