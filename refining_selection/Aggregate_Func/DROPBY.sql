SELECT released_year, COUNT(*)
FROM books GROUP BY released_year;

SELECT author_fname, author_lname, COUNT(*) AS Total
FROM books GROUP BY author_fname, author_lname;

SELECT CONCAT('In ',released_year,' ', COUNT(*), ' book(s) released.') AS 'Years and releases'
FROM books GROUP BY released_year DESC;

SELECT Max(pages) FROM books;