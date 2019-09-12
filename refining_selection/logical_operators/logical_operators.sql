SELECT title, released_year, COUNT(*) FROM books GROUP BY released_year;

SELECT title, released_year FROM books WHERE released_year = 2001; 

-- != not equal

SELECT title, released_year FROM books WHERE released_year != 2001;
-- +-----------------------------------------------------+---------------+
-- | title                                               | released_year |
-- +-----------------------------------------------------+---------------+
-- | The Namesake                                        |          2003 |
-- | Norse Mythology                                     |          2016 |
-- | Interpreter of Maladies                             |          1996 |
-- | A Hologram for the King: A Novel                    |          2012 |
-- | The Circle                                          |          2013 |
-- | The Amazing Adventures of Kavalier & Clay           |          2000 |
-- | Just Kids                                           |          2010 |
-- | Coraline                                            |          2003 |
-- | What We Talk About When We Talk About Love: Stories |          1981 |
-- | Where I'm Calling From: Selected Stories            |          1989 |
-- | White Noise                                         |          1985 |
-- | Cannery Row                                         |          1945 |
-- | Oblivion: Stories                                   |          2004 |
-- | Consider the Lobster                                |          2005 |
-- | 10% Happier                                         |          2014 |
-- | Lincoln In The Bardo                                |          2017 |
-- +-----------------------------------------------------+---------------+

SELECT title, released_year FROM books WHERE released_year != 2003;

-- +-----------------------------------------------------+---------------+
-- | title                                               | released_year |
-- +-----------------------------------------------------+---------------+
-- | Norse Mythology                                     |          2016 |
-- | American Gods                                       |          2001 |
-- | Interpreter of Maladies                             |          1996 |
-- | A Hologram for the King: A Novel                    |          2012 |
-- | The Circle                                          |          2013 |
-- | The Amazing Adventures of Kavalier & Clay           |          2000 |
-- | Just Kids                                           |          2010 |
-- | A Heartbreaking Work of Staggering Genius           |          2001 |
-- | What We Talk About When We Talk About Love: Stories |          1981 |
-- | Where Im Calling From: Selected Stories            |          1989 |
-- | White Noise                                         |          1985 |
-- | Cannery Row                                         |          1945 |
-- | Oblivion: Stories                                   |          2004 |
-- | Consider the Lobster                                |          2005 |
-- | 10% Happier                                         |          2014 |
-- | fake_book                                           |          2001 |
-- | Lincoln In The Bardo                                |          2017 |
-- +-----------------------------------------------------+---------------+

-- NOT LIKE 

SELECT title, author_lname FROM books WHERE title LIKE 'w%';

SELECT title, author_lname FROM books WHERE title NOT LIKE 'w%';

-- AND (&&)

SELECT  
    title, 
    author_lname, 
    released_year FROM books
WHERE author_lname='Eggers' 
    AND released_year > 2010;
	
-- +----------------------------------+--------------+---------------+
-- | title                            | author_lname | released_year |
-- +----------------------------------+--------------+---------------+
-- | A Hologram for the King: A Novel | Eggers       |          2012 |
-- | The Circle                       | Eggers       |          2013 |
-- +----------------------------------+--------------+---------------+

-- OR (||)

SELECT title, 
	   author_lname, 
	   released_year FROM books
WHERE author_lname = 'Eggers' 
	|| released_year > 2010;
	
-- +-------------------------------------------+--------------+---------------+
-- | title                                     | author_lname | released_year |
-- +-------------------------------------------+--------------+---------------+
-- | Norse Mythology                           | Gaiman       |          2016 |
-- | A Hologram for the King: A Novel          | Eggers       |          2012 |
-- | The Circle                                | Eggers       |          2013 |
-- | A Heartbreaking Work of Staggering Genius | Eggers       |          2001 |
-- | 10% Happier                               | Harris       |          2014 |
-- | Lincoln In The Bardo                      | Saunders     |          2017 |
-- +-------------------------------------------+--------------+---------------+

SELECT title, 
	   author_lname, 
	   released_year, 
	   stock_quantity FROM books 
WHERE author_lname =  'Eggers'
	|| released_year > 2010 
	OR stock_quantity > 100;

-- +-------------------------------------------+----------------+---------------+----------------+
-- | title                                     | author_lname   | released_year | stock_quantity |
-- +-------------------------------------------+----------------+---------------+----------------+
-- | Norse Mythology                           | Gaiman         |          2016 |             43 |
-- | A Hologram for the King: A Novel          | Eggers         |          2012 |            154 |
-- | The Circle                                | Eggers         |          2013 |             26 |
-- | A Heartbreaking Work of Staggering Genius | Eggers         |          2001 |            104 |
-- | Oblivion: Stories                         | Foster Wallace |          2004 |            172 |
-- | 10% Happier                               | Harris         |          2014 |             29 |
-- | fake_book                                 | Harris         |          2001 |            287 |
-- | Lincoln In The Bardo                      | Saunders       |          2017 |           1000 |
-- +-------------------------------------------+----------------+---------------+----------------+

-- BETWEEN and NOT BETWEEN

SELECT author_lname, released_year FROM books WHERE released_year BETWEEN 2004 AND 2015;

-- +----------------+---------------+
-- | author_lname   | released_year |
-- +----------------+---------------+
-- | Eggers         |          2012 |
-- | Eggers         |          2013 |
-- | Smith          |          2010 |
-- | Foster Wallace |          2004 |
-- | Foster Wallace |          2005 |
-- | Harris         |          2014 |
-- +----------------+---------------+

SELECT author_lname, released_year FROM books WHERE released_year NOT BETWEEN 2004 AND 2015;

-- +--------------+---------------+
-- | author_lname | released_year |
-- +--------------+---------------+
-- | Lahiri       |          2003 |
-- | Gaiman       |          2016 |
-- | Gaiman       |          2001 |
-- | Lahiri       |          1996 |
-- | Chabon       |          2000 |
-- | Eggers       |          2001 |
-- | Gaiman       |          2003 |
-- | Carver       |          1981 |
-- | Carver       |          1989 |
-- | DeLillo      |          1985 |
-- | Steinbeck    |          1945 |
-- | Harris       |          2001 |
-- | Saunders     |          2017 |
-- +--------------+---------------+

SELECT author_lname, released_year FROM books WHERE author_lname IN ('carver', 'lahiri', 'smith');

-- +--------------+---------------+
-- | author_lname | released_year |
-- +--------------+---------------+
-- | Lahiri       |          2003 |
-- | Lahiri       |          1996 |
-- | Smith        |          2010 |
-- | Carver       |          1981 |
-- | Carver       |          1989 |
-- +--------------+---------------+

SELECT author_lname, released_year FROM books WHERE released_year NOT IN (2000,2002,2004,2006,2008
,2010,2012,2014,2016);
-- +----------------+---------------+
-- | author_lname   | released_year |
-- +----------------+---------------+
-- | Lahiri         |          2003 |
-- | Gaiman         |          2001 |
-- | Lahiri         |          1996 |
-- | Eggers         |          2013 |
-- | Eggers         |          2001 |
-- | Gaiman         |          2003 |
-- | Carver         |          1981 |
-- | Carver         |          1989 |
-- | DeLillo        |          1985 |
-- | Steinbeck      |          1945 |
-- | Foster Wallace |          2005 |
-- | Harris         |          2001 |
-- | Saunders       |          2017 |
-- +----------------+---------------+

-- MODULE %

SELECT author_lname, released_year FROM books WHERE released_year >= 2000 AND released_year NOT IN
 (released_year % 2 = 0);

-- +----------------+---------------+
-- | author_lname   | released_year |
-- +----------------+---------------+
-- | Lahiri         |          2003 |
-- | Gaiman         |          2016 |
-- | Gaiman         |          2001 |
-- | Eggers         |          2012 |
-- | Eggers         |          2013 |
-- | Chabon         |          2000 |
-- | Smith          |          2010 |
-- | Eggers         |          2001 |
-- | Gaiman         |          2003 |
-- | Foster Wallace |          2004 |
-- | Foster Wallace |          2005 |
-- | Harris         |          2014 |
-- | Harris         |          2001 |
-- | Saunders       |          2017 |
-- +----------------+---------------+

-- CASE STATEMENTS

SELECT title, stock_quantity,
	CASE
	 WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
	 WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
	 WHEN stock_quantity BETWEEN 101 AND 150 THEN '***'
	 ELSE '****'
	END AS STOCK
FROM books;

-- +-----------------------------------------------------+----------------+-------+
-- | title                                               | stock_quantity | STOCK |
-- +-----------------------------------------------------+----------------+-------+
-- | The Namesake                                        |             32 | *     |
-- | Norse Mythology                                     |             43 | *     |
-- | American Gods                                       |             12 | *     |
-- | Interpreter of Maladies                             |             97 | **    |
-- | A Hologram for the King: A Novel                    |            154 | ****  |
-- | The Circle                                          |             26 | *     |
-- | The Amazing Adventures of Kavalier & Clay           |             68 | **    |
-- | Just Kids                                           |             55 | **    |
-- | A Heartbreaking Work of Staggering Genius           |            104 | ***   |
-- | Coraline                                            |            100 | **    |
-- | What We Talk About When We Talk About Love: Stories |             23 | *     |
-- | Where I'm Calling From: Selected Stories            |             12 | *     |
-- | White Noise                                         |             49 | *     |
-- | Cannery Row                                         |             95 | **    |
-- | Oblivion: Stories                                   |            172 | ****  |
-- | Consider the Lobster                                |             92 | **    |
-- | 10% Happier                                         |             29 | *     |
-- | fake_book                                           |            287 | ****  |
-- | Lincoln In The Bardo                                |           1000 | ****  |
-- +-----------------------------------------------------+----------------+-------+

SELECT title, released_year,
	CASE
	 WHEN released_year >= 2000 THEN 'Modern Lit'
	 ELSE '20th Century Lit'
	END AS GENRE
FROM books;

-- +-----------------------------------------------------+---------------+------------------+
-- | title                                               | released_year | GENRE            |
-- +-----------------------------------------------------+---------------+------------------+
-- | The Namesake                                        |          2003 | Modern Lit       |
-- | Norse Mythology                                     |          2016 | Modern Lit       |
-- | American Gods                                       |          2001 | Modern Lit       |
-- | Interpreter of Maladies                             |          1996 | 20th Century Lit |
-- | A Hologram for the King: A Novel                    |          2012 | Modern Lit       |
-- | The Circle                                          |          2013 | Modern Lit       |
-- | The Amazing Adventures of Kavalier & Clay           |          2000 | Modern Lit       |
-- | Just Kids                                           |          2010 | Modern Lit       |
-- | A Heartbreaking Work of Staggering Genius           |          2001 | Modern Lit       |
-- | Coraline                                            |          2003 | Modern Lit       |
-- | What We Talk About When We Talk About Love: Stories |          1981 | 20th Century Lit |
-- | Where I'm Calling From: Selected Stories            |          1989 | 20th Century Lit |
-- | White Noise                                         |          1985 | 20th Century Lit |
-- | Cannery Row                                         |          1945 | 20th Century Lit |
-- | Oblivion: Stories                                   |          2004 | Modern Lit       |
-- | Consider the Lobster                                |          2005 | Modern Lit       |
-- | 10% Happier                                         |          2014 | Modern Lit       |
-- | fake_book                                           |          2001 | Modern Lit       |
-- | Lincoln In The Bardo                                |          2017 | Modern Lit       |
-- +-----------------------------------------------------+---------------+------------------+