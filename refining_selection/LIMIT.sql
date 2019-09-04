CREATE DATABASE book_shop;
USE book_shop; 
 
CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);
 
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

-- SQL COMMANDS

-- Will output the first 5 books -
SELECT book_id, title FROM books LIMIT 5;

-- +---------+----------------------------------+
-- | book_id | title                            |
-- +---------+----------------------------------+
-- |       1 | The Namesake                     |
-- |       2 | Norse Mythology                  |
-- |       3 | American Gods                    |
-- |       4 | Interpreter of Maladies          |
-- |       5 | A Hologram for the King: A Novel |
-- +---------+----------------------------------+

-- Will output the 5 books starting at row number 4 (rows: 4,5,6,7,8) - 
SELECT book_id, title FROM books LIMIT 3,5;

-- +---------+-------------------------------------------+
-- | book_id | title                                     |
-- +---------+-------------------------------------------+
-- |       4 | Interpreter of Maladies                   |
-- |       5 | A Hologram for the King: A Novel          |
-- |       6 | The Circle                                |
-- |       7 | The Amazing Adventures of Kavalier & Clay |
-- |       8 | Just Kids                                 |
-- +---------+-------------------------------------------+

-- Will output the 5 first recently released books - 
SELECT book_id, title, released_year FROM books ORDER BY 3 DESC LIMIT 5;

-- +---------+----------------------------------+---------------+
-- | book_id | title                            | released_year |
-- +---------+----------------------------------+---------------+
-- |      19 | Lincoln In The Bardo             |          2017 |
-- |       2 | Norse Mythology                  |          2016 |
-- |      17 | 10% Happier                      |          2014 |
-- |       6 | The Circle                       |          2013 |
-- |       5 | A Hologram for the King: A Novel |          2012 |
-- +---------+----------------------------------+---------------+
