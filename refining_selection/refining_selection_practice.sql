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

SELECT title FROM books WHERE title LIKE '%stories%';

-- +-----------------------------------------------------+
-- | title                                               |
-- +-----------------------------------------------------+
-- | What We Talk About When We Talk About Love: Stories |
-- | Where I'm Calling From: Selected Stories            |
-- | Oblivion: Stories                                   |
-- +-----------------------------------------------------+

SELECT title, pages FROM books WHERE pages LIKE '6%';

-- +-------------------------------------------+-------+
-- | title                                     | pages |
-- +-------------------------------------------+-------+
-- | The Amazing Adventures of Kavalier & Clay |   634 |
-- +-------------------------------------------+-------+

SELECT CONCAT(title, ' ', released_year) AS Summary FROM books ORDER BY released_year DESC LIMIT 0,3;

-- +---------------------------+
-- | Summary                   |
-- +---------------------------+
-- | Lincoln In The Bardo 2017 |
-- | Norse Mythology 2016      |
-- | 10% Happier 2014          |
-- +---------------------------+

SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';

-- +----------------------+----------------+
-- | title                | author_lname   |
-- +----------------------+----------------+
-- | Oblivion: Stories    | Foster Wallace |
-- | Consider the Lobster | Foster Wallace |
-- +----------------------+----------------+

SELECT title, released_year, stock_quantity FROM books ORDER BY 3 LIMIT 0,3;

-- +-----------------------------------------------------+---------------+----------------+
-- | title                                               | released_year | stock_quantity |
-- +-----------------------------------------------------+---------------+----------------+
-- | American Gods                                       |          2001 |             12 |
-- | Where I'm Calling From: Selected Stories            |          1989 |             12 |
-- | What We Talk About When We Talk About Love: Stories |          1981 |             23 |
-- +-----------------------------------------------------+---------------+----------------+

SELECT title, author_lname FROM books ORDER BY author_lname, title;

-- +-----------------------------------------------------+----------------+
-- | title                                               | author_lname   |
-- +-----------------------------------------------------+----------------+
-- | What We Talk About When We Talk About Love: Stories | Carver         |
-- | Where I'm Calling From: Selected Stories            | Carver         |
-- | The Amazing Adventures of Kavalier & Clay           | Chabon         |
-- | White Noise                                         | DeLillo        |
-- | A Heartbreaking Work of Staggering Genius           | Eggers         |
-- | A Hologram for the King: A Novel                    | Eggers         |
-- | The Circle                                          | Eggers         |
-- | Consider the Lobster                                | Foster Wallace |
-- | Oblivion: Stories                                   | Foster Wallace |
-- | American Gods                                       | Gaiman         |
-- | Coraline                                            | Gaiman         |
-- | Norse Mythology                                     | Gaiman         |
-- | 10% Happier                                         | Harris         |
-- | fake_book                                           | Harris         |
-- | Interpreter of Maladies                             | Lahiri         |
-- | The Namesake                                        | Lahiri         |
-- | Lincoln In The Bardo                                | Saunders       |
-- | Just Kids                                           | Smith          |
-- | Cannery Row                                         | Steinbeck      |
-- +-----------------------------------------------------+----------------+

SELECT UPPER(CONCAT('MY FAVORITE AUTHOR IS ', author_fname, ' ', author_lname, '!')) AS Yell FROM books ORDER BY author_lname;

-- +---------------------------------------------+
-- | Yell                                        |
-- +---------------------------------------------+
-- | MY FAVORITE AUTHOR IS RAYMOND CARVER!       |
-- | MY FAVORITE AUTHOR IS RAYMOND CARVER!       |
-- | MY FAVORITE AUTHOR IS MICHAEL CHABON!       |
-- | MY FAVORITE AUTHOR IS DON DELILLO!          |
-- | MY FAVORITE AUTHOR IS DAVE EGGERS!          |
-- | MY FAVORITE AUTHOR IS DAVE EGGERS!          |
-- | MY FAVORITE AUTHOR IS DAVE EGGERS!          |
-- | MY FAVORITE AUTHOR IS DAVID FOSTER WALLACE! |
-- | MY FAVORITE AUTHOR IS DAVID FOSTER WALLACE! |
-- | MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
-- | MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
-- | MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
-- | MY FAVORITE AUTHOR IS FREIDA HARRIS!        |
-- | MY FAVORITE AUTHOR IS DAN HARRIS!           |
-- | MY FAVORITE AUTHOR IS JHUMPA LAHIRI!        |
-- | MY FAVORITE AUTHOR IS JHUMPA LAHIRI!        |
-- | MY FAVORITE AUTHOR IS GEORGE SAUNDERS!      |
-- | MY FAVORITE AUTHOR IS PATTI SMITH!          |
-- | MY FAVORITE AUTHOR IS JOHN STEINBECK!       |
