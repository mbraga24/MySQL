CREATE TABLE people (name VARCHAR(100), birthdate DATE, birthtime TIME, birthdt DATETIME);
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

SELECT * FROM people;

-- +-------+------------+-----------+---------------------+
-- | name  | birthdate  | birthtime | birthdt             |
-- +-------+------------+-----------+---------------------+
-- | Padma | 1983-11-11 | 10:07:35  | 1983-11-11 10:07:35 |
-- | Larry | 1943-12-25 | 04:10:42  | 1943-12-25 04:10:42 |
-- +-------+------------+-----------+---------------------+

SELECT name AS 'Name', DATE_FORMAT(birthdt, '%m/%d/%Y') AS 'Dates' FROM people;

-- +-------+------------+
-- | Name  | Dates      |
-- +-------+------------+
-- | Padma | 11/11/1983 |
-- | Larry | 12/25/1943 |
-- +-------+------------+

INSERT INTO people(name, birthdate, birthtime, birthdt) VALUES('Cosmos', CURDATE(), CURTIME(), NOW());

SELECT * FROM people;

--  +--------+------------+-----------+---------------------+
--  | name   | birthdate  | birthtime | birthdt             |
--  +--------+------------+-----------+---------------------+
--  | Padma  | 1983-11-11 | 10:07:35  | 1983-11-11 10:07:35 |
--  | Larry  | 1943-12-25 | 04:10:42  | 1943-12-25 04:10:42 |
--  | Cosmos | 2019-09-06 | 16:36:01  | 2019-09-06 16:36:01 |
--  +--------+------------+-----------+---------------------+

CREATE TABLE comments
( 
	content VARCHAR(100),
 	created_at TIMESTAMP DEFAULT NOW() 
);

INSERT INTO comments(content)
VALUES('Hey buddy, happy birthday! All the best to you.');
	
INSERT INTO comments(content)
VALUES('Lets go out tonight, bae!')
	
INSERT INTO comments(content)
VALUES('You are the best! Congrats!');
	
SELECT * FROM comments;

-- +-------------------------------------------------+---------------------+
-- | content                                         | created_at          |
-- +-------------------------------------------------+---------------------+
-- | Hey buddy, happy birthday! All the best to you. | 2019-09-06 16:38:40 |
-- | Lets go out tonight, bae!                       | 2019-09-06 16:40:02 |
-- | You are the best! Congrats!                     | 2019-09-06 16:40:33 |
-- +-------------------------------------------------+---------------------+

SELECT * FROM comments ORDER BY created_at DESC;

-- +-------------------------------------------------+---------------------+
-- | content                                         | created_at          |
-- +-------------------------------------------------+---------------------+
-- | You are the best! Congrats!                     | 2019-09-06 16:40:33 |
-- | Lets go out tonight, bae!                       | 2019-09-06 16:40:02 |
-- | Hey buddy, happy birthday! All the best to you. | 2019-09-06 16:38:40 |
-- +-------------------------------------------------+---------------------+

CREATE TABLE new_comments
(
	content VARCHAR(100),
	created_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO new_comments(content)
VALUES('I loooove that song!');
	
SELECT * FROM new_comments;

-- +----------------------+---------------------+
-- | content              | created_at          |
-- +----------------------+---------------------+
-- | I loooove that song! | 2019-09-06 17:05:56 |
-- +----------------------+---------------------+