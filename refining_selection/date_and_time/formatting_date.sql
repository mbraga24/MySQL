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