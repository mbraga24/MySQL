SELECT count(*) AS 'Number of books' FROM books;

-- +-----------------+
-- | Number of books |
-- +-----------------+
-- |              19 |
-- +-----------------+

SELECT released_year, COUNT(*) AS 'Books released' FROM books GROUP BY released_year;

-- +---------------+----------------+
-- | released_year | Books released |
-- +---------------+----------------+
-- |          1945 |              1 |
-- |          1981 |              1 |
-- |          1985 |              1 |
-- |          1989 |              1 |
-- |          1996 |              1 |
-- |          2000 |              1 |
-- |          2001 |              3 |
-- |          2003 |              2 |
-- |          2004 |              1 |
-- |          2005 |              1 |
-- |          2010 |              1 |
-- |          2012 |              1 |
-- |          2013 |              1 |
-- |          2014 |              1 |
-- |          2016 |              1 |
-- |          2017 |              1 |
-- +---------------+----------------+

SELECT SUM(stock_quantity) AS 'Total books in stock' FROM books;

-- +----------------------+
-- | Total books in stock |
-- +----------------------+
-- |                 2450 |
-- +----------------------+

SELECT author_fname, author_lname, AVG(released_year) AS 'Average Released Year' FROM books GROUP BY author_lname, author_fname;

-- +--------------+----------------+-----------------------+
-- | author_fname | author_lname   | Average Released Year |
-- +--------------+----------------+-----------------------+
-- | Raymond      | Carver         |             1985.0000 |
-- | Michael      | Chabon         |             2000.0000 |
-- | Don          | DeLillo        |             1985.0000 |
-- | Dave         | Eggers         |             2008.6667 |
-- | David        | Foster Wallace |             2004.5000 |
-- | Neil         | Gaiman         |             2006.6667 |
-- | Dan          | Harris         |             2014.0000 |
-- | Freida       | Harris         |             2001.0000 |
-- | Jhumpa       | Lahiri         |             1999.5000 |
-- | George       | Saunders       |             2017.0000 |
-- | Patti        | Smith          |             2010.0000 |
-- | John         | Steinbeck      |             1945.0000 |
-- +--------------+----------------+-----------------------+

SELECT CONCAT(author_fname, ' ', author_lname) AS 'Author Name', Max(pages) AS 'Number of pages' 
FROM books 
WHERE pages=(SELECT Max(pages) FROM books);

-- +----------------+-----------------+
-- | Author Name    | Number of pages |
-- +----------------+-----------------+
-- | Michael Chabon |             634 |
-- +----------------+-----------------+

SELECT released_year AS 'year', COUNT(*) AS '# books', AVG(pages) AS 'AVG Pages' FROM books GROUP BY released_year;

-- +------+---------+-----------+
-- | year | # books | AVG Pages |
-- +------+---------+-----------+
-- | 1945 |       1 |  181.0000 |
-- | 1981 |       1 |  176.0000 |
-- | 1985 |       1 |  320.0000 |
-- | 1989 |       1 |  526.0000 |
-- | 1996 |       1 |  198.0000 |
-- | 2000 |       1 |  634.0000 |
-- | 2001 |       3 |  443.3333 |
-- | 2003 |       2 |  249.5000 |
-- | 2004 |       1 |  329.0000 |
-- | 2005 |       1 |  343.0000 |
-- | 2010 |       1 |  304.0000 |
-- | 2012 |       1 |  352.0000 |
-- | 2013 |       1 |  504.0000 |
-- | 2014 |       1 |  256.0000 |
-- | 2016 |       1 |  304.0000 |
-- | 2017 |       1 |  367.0000 |
-- +------+---------+-----------+