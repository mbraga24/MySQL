-- 1) WHAT IS A GOOD USE CASE FOR CHAR ?

CREATE TABLE form 
(	
	fname VARCHAR(100), 
	lname VARCHAR(100), 
	city VARCHAR(50), 
	state CHAR(2)     # <--- use case.
);

INSERT INTO form(fname, lname, city, state)
VALUES('Marcos', 'Souza', 'New York', 'NY');

SELECT * FROM form;

-- 2) FILL IN THE BLANKS WITH THE APROPPRIATE DATE TYPE:

-- CREATE TABLE inventory
-- (
-- 	item_name ___________
-- 	price ___________ 
-- 	quantity ___________ 
-- );

CREATE TABLE inventory
(
	item_name VARCHAR(255),
	price DECIMAL(8,2),
	quantity INT
);

-- 3) WHAT'S THE DIFFERENCE BETWEEN DATATIME AND TIMESTAMP ?

-- DATETIME has a larger range of years: 1000 -> 9999 - thus occupies more space;
-- TIMESTAMP has a smaller range of years: 1970 -> 2038 - thus occupy less space;
-- TIMESTAMP is best used when data needs to be stored in the datebase and when said data needs 
-- to have the current date and time stored too.

-- 4) PRINT OUT THE CURRENT TIME:

SELECT CURTIME();
-- +-----------+
-- | CURTIME() |
-- +-----------+
-- | 17:30:10  |
-- +-----------+

-- 5) PRINT OUT THE DAY OF THE WEEK (NUMBER):

SELECT DAYOFWEEK(CURDATE()) AS 'Day of the week';
-- +-----------------+
-- | Day of the week |
-- +-----------------+
-- |               6 |
-- +-----------------+

-- 6) PRINT OUT THE DAY OF THE WEEK (NAME):

SELECT DAYNAME(CURDATE()) AS 'Day of the week';
-- +-----------------+
-- | Day of the week |
-- +-----------------+
-- | Friday          |
-- +-----------------+

-- 7) PRINT OUT THE DAY (mm/dd/yyyy):

SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y') AS 'Date';
-- +------------+
-- | Date       |
-- +------------+
-- | 09/06/2019 |
-- +------------+

-- 8) PRINT PUT: December 1st at hours:minutes

SELECT DATE_FORMAT(CURRENT_TIMESTAMP(), '%M %D at %H:%i') AS 'Post Time';
-- +------------------------+
-- | Post Time              |
-- +------------------------+
-- | September 6th at 21:09 |
-- +------------------------+

-- 9) CREATE A 'tweets' TABLE WITH content, username, and current time of post:

CREATE TABLE tweets
(
	content VARCHAR(140),
	username CHAR(10),
	post_time TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO tweets(content, username)
VALUES('Hey guys, this is my first tweet with MySQL!!!', 'RodricK');

SELECT * FROM tweets;
-- +------------------------------------------------+----------+---------------------+
-- | content                                        | username | post_time           |
-- +------------------------------------------------+----------+---------------------+
-- | Hey guys, this is my first tweet with MySQL!!! | RodricK  | 2019-09-06 21:15:48 |
-- +------------------------------------------------+----------+---------------------+
