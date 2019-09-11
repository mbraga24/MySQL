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