SELECT Sum(pages) FROM books;

-- +------------+
-- | Sum(pages) |
-- +------------+
-- |       6623 |
-- +------------+

SELECT	
		author_fname,
		author_lname,
		Sum(pages)
FROM books
GROUP BY
		author_lname,
		author_fname;

-- +--------------+----------------+------------+
-- | author_fname | author_lname   | Sum(pages) |
-- +--------------+----------------+------------+
-- | Raymond      | Carver         |        702 |
-- | Michael      | Chabon         |        634 |
-- | Don          | DeLillo        |        320 |
-- | Dave         | Eggers         |       1293 |
-- | David        | Foster Wallace |        672 |
-- | Neil         | Gaiman         |        977 |
-- | Dan          | Harris         |        256 |
-- | Freida       | Harris         |        428 |
-- | Jhumpa       | Lahiri         |        489 |
-- | George       | Saunders       |        367 |
-- | Patti        | Smith          |        304 |
-- | John         | Steinbeck      |        181 |
-- +--------------+----------------+------------+ 

SELECT 
		author_fname,
		author_lname,
		Sum(released_year)
FROM books
GROUP BY
		author_lname,
		author_fname;

-- +--------------+----------------+--------------------+
-- | author_fname | author_lname   | Sum(released_year) |
-- +--------------+----------------+--------------------+
-- | Raymond      | Carver         |               3970 |
-- | Michael      | Chabon         |               2000 |
-- | Don          | DeLillo        |               1985 |
-- | Dave         | Eggers         |               6026 |
-- | David        | Foster Wallace |               4009 |
-- | Neil         | Gaiman         |               6020 |
-- | Dan          | Harris         |               2014 |
-- | Freida       | Harris         |               2001 |
-- | Jhumpa       | Lahiri         |               3999 |
-- | George       | Saunders       |               2017 |
-- | Patti        | Smith          |               2010 |
-- | John         | Steinbeck      |               1945 |
-- +--------------+----------------+--------------------+

SELECT AVG(pages) FROM books;

-- +------------+
-- | AVG(pages) |
-- +------------+
-- |   348.5789 |
-- +------------+

SELECT released_year, AVG(stock_quantity) FROM books GROUP BY released_year;

-- +---------------+---------------------+
-- | released_year | AVG(stock_quantity) |
-- +---------------+---------------------+
-- |          1945 |             95.0000 |
-- |          1981 |             23.0000 |
-- |          1985 |             49.0000 |
-- |          1989 |             12.0000 |
-- |          1996 |             97.0000 |
-- |          2000 |             68.0000 |
-- |          2001 |            134.3333 |
-- |          2003 |             66.0000 |
-- |          2004 |            172.0000 |
-- |          2005 |             92.0000 |
-- |          2010 |             55.0000 |
-- |          2012 |            154.0000 |
-- |          2013 |             26.0000 |
-- |          2014 |             29.0000 |
-- |          2016 |             43.0000 |
-- |          2017 |           1000.0000 |
-- +---------------+---------------------+

SELECT author_fname, author_lname, AVG(pages) FROM books GROUP BY author_lname, author_fname;

-- +--------------+----------------+------------+
-- | author_fname | author_lname   | AVG(pages) |
-- +--------------+----------------+------------+
-- | Raymond      | Carver         |   351.0000 |
-- | Michael      | Chabon         |   634.0000 |
-- | Don          | DeLillo        |   320.0000 |
-- | Dave         | Eggers         |   431.0000 |
-- | David        | Foster Wallace |   336.0000 |
-- | Neil         | Gaiman         |   325.6667 |
-- | Dan          | Harris         |   256.0000 |
-- | Freida       | Harris         |   428.0000 |
-- | Jhumpa       | Lahiri         |   244.5000 |
-- | George       | Saunders       |   367.0000 |
-- | Patti        | Smith          |   304.0000 |
-- | John         | Steinbeck      |   181.0000 |
-- +--------------+----------------+------------+