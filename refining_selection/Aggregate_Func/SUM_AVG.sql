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