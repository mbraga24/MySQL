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

-- SQL Commands

SELECT author_lname FROM books ORDER BY author_lname;

-- +----------------+
-- | author_lname   |
-- +----------------+
-- | Carver         |
-- | Carver         |
-- | Chabon         |
-- | DeLillo        |
-- | Eggers         |
-- | Eggers         |
-- | Eggers         |
-- | Foster Wallace |
-- | Foster Wallace |
-- | Gaiman         |
-- | Gaiman         |
-- | Gaiman         |
-- | Harris         |
-- | Harris         |
-- | Lahiri         |
-- | Lahiri         |
-- | Saunders       |
-- | Smith          |
-- | Steinbeck      |
-- +----------------+

SELECT title FROM books ORDER BY title;

-- +-----------------------------------------------------+
-- | title                                               |
-- +-----------------------------------------------------+
-- | 10% Happier                                         |
-- | A Heartbreaking Work of Staggering Genius           |
-- | A Hologram for the King: A Novel                    |
-- | American Gods                                       |
-- | Cannery Row                                         |
-- | Consider the Lobster                                |
-- | Coraline                                            |
-- | fake_book                                           |
-- | Interpreter of Maladies                             |
-- | Just Kids                                           |
-- | Lincoln In The Bardo                                |
-- | Norse Mythology                                     |
-- | Oblivion: Stories                                   |
-- | The Amazing Adventures of Kavalier & Clay           |
-- | The Circle                                          |
-- | The Namesake                                        |
-- | What We Talk About When We Talk About Love: Stories |
-- | Where Im Calling From: Selected Stories             |
-- | White Noise                                         |
-- +-----------------------------------------------------+

SELECT released_year FROM books ORDER BY released_year;

-- +---------------+
-- | released_year |
-- +---------------+
-- |          1945 |
-- |          1981 |
-- |          1985 |
-- |          1989 |
-- |          1996 |
-- |          2000 |
-- |          2001 |
-- |          2001 |
-- |          2001 |
-- |          2003 |
-- |          2003 |
-- |          2004 |
-- |          2005 |
-- |          2010 |
-- |          2012 |
-- |          2013 |
-- |          2014 |
-- |          2016 |
-- |          2017 |
-- +---------------+

-- DESCENDING ORDER

SELECT released_year FROM books ORDER BY released_year DESC;

-- +---------------+
-- | released_year |
-- +---------------+
-- |          2017 |
-- |          2016 |
-- |          2014 |
-- |          2013 |
-- |          2012 |
-- |          2010 |
-- |          2005 |
-- |          2004 |
-- |          2003 |
-- |          2003 |
-- |          2001 |
-- |          2001 |
-- |          2001 |
-- |          2000 |
-- |          1996 |
-- |          1989 |
-- |          1985 |
-- |          1981 |
-- |          1945 |
-- +---------------+

SELECT author_fname, author_lname, title, released_year FROM books ORDER BY author_fname;

-- +--------------+----------------+-----------------------------------------------------+---------------+
-- | author_fname | author_lname   | title                                               | released_year |
-- +--------------+----------------+-----------------------------------------------------+---------------+
-- | Dan          | Harris         | 10% Happier                                         |          2014 |
-- | Dave         | Eggers         | A Hologram for the King: A Novel                    |          2012 |
-- | Dave         | Eggers         | The Circle                                          |          2013 |
-- | Dave         | Eggers         | A Heartbreaking Work of Staggering Genius           |          2001 |
-- | David        | Foster Wallace | Consider the Lobster                                |          2005 |
-- | David        | Foster Wallace | Oblivion: Stories                                   |          2004 |
-- | Don          | DeLillo        | White Noise                                         |          1985 |
-- | Freida       | Harris         | fake_book                                           |          2001 |
-- | George       | Saunders       | Lincoln In The Bardo                                |          2017 |
-- | Jhumpa       | Lahiri         | The Namesake                                        |          2003 |
-- | Jhumpa       | Lahiri         | Interpreter of Maladies                             |          1996 |
-- | John         | Steinbeck      | Cannery Row                                         |          1945 |
-- | Michael      | Chabon         | The Amazing Adventures of Kavalier & Clay           |          2000 |
-- | Neil         | Gaiman         | American Gods                                       |          2001 |
-- | Neil         | Gaiman         | Norse Mythology                                     |          2016 |
-- | Neil         | Gaiman         | Coraline                                            |          2003 |
-- | Patti        | Smith          | Just Kids                                           |          2010 |
-- | Raymond      | Carver         | What We Talk About When We Talk About Love: Stories |          1981 |
-- | Raymond      | Carver         | Where I'm Calling From: Selected Stories            |          1989 |
-- +--------------+----------------+-----------------------------------------------------+---------------+

