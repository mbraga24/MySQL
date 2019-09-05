SELECT Max(pages) FROM books;

SELECT Min(pages) FROM books;

SELECT Min(released_year) FROM books;

SELECT Max(released_year) FROM books;

-- SUBQUERIES

-- STEP 1)
SELECT title, pages FROM books;
-- STEP 2) 
SELECT Max(pages) FROM books;

SELECT title, pages FROM books WHERE pages=(SELECT Max(pages) FROM books);

SELECT title, stock_quantity FROM books WHERE stock_quantity=(SELECT Max(stock_quantity) FROM books);

SELECT title, stock_quantity FROM books WHERE stock_quantity=(SELECT Min(stock_quantity) FROM books);



