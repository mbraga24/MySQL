SELECT Max(pages) FROM books;

SELECT Min(pages) FROM books;

SELECT Min(released_year) FROM books;

SELECT Max(released_year) FROM books;

-- SUBQUERIES

-- STEP 1)
SELECT title, pages FROM books;

-- +-----------------------------------------------------+-------+
-- | title                                               | pages |
-- +-----------------------------------------------------+-------+
-- | The Namesake                                        |   291 |
-- | Norse Mythology                                     |   304 |
-- | American Gods                                       |   465 |
-- | Interpreter of Maladies                             |   198 |
-- | A Hologram for the King: A Novel                    |   352 |
-- | The Circle                                          |   504 |
-- | The Amazing Adventures of Kavalier & Clay           |   634 |
-- | Just Kids                                           |   304 |
-- | A Heartbreaking Work of Staggering Genius           |   437 |
-- | Coraline                                            |   208 |
-- | What We Talk About When We Talk About Love: Stories |   176 |
-- | Where I'm Calling From: Selected Stories            |   526 |
-- | White Noise                                         |   320 |
-- | Cannery Row                                         |   181 |
-- | Oblivion: Stories                                   |   329 |
-- | Consider the Lobster                                |   343 |
-- | 10% Happier                                         |   256 |
-- | fake_book                                           |   428 |
-- | Lincoln In The Bardo                                |   367 |
-- +-----------------------------------------------------+-------+

-- STEP 2) 
SELECT Max(pages) FROM books;

-- +------------+
-- | Max(pages) |
-- +------------+
-- |        634 |
-- +------------+

SELECT title, stock_quantity FROM books WHERE stock_quantity=(SELECT Max(stock_quantity) FROM books);

-- +-------------------------------------------+-------+
-- | title                                     | pages |
-- +-------------------------------------------+-------+
-- | The Amazing Adventures of Kavalier & Clay |   634 |
-- +-------------------------------------------+-------+

SELECT title, stock_quantity FROM books WHERE stock_quantity=(SELECT Min(stock_quantity) FROM books);

-- +----------------------+----------------+
-- | title                | stock_quantity |
-- +----------------------+----------------+
-- | Lincoln In The Bardo |           1000 |
-- +----------------------+----------------+

SELECT title, pages FROM books
ORDER BY pages LIMIT 1;

-- +-----------------------------------------------------+-------+
-- | title                                               | pages |
-- +-----------------------------------------------------+-------+
-- | What We Talk About When We Talk About Love: Stories |   176 |
-- +-----------------------------------------------------+-------+

SELECT title, pages FROM books
ORDER BY pages DESC LIMIT 1;

-- +-------------------------------------------+-------+
-- | title                                     | pages |
-- +-------------------------------------------+-------+
-- | The Amazing Adventures of Kavalier & Clay |   634 |
-- +-------------------------------------------+-------+

SELECT title, stock_quantity FROM books
ORDER BY stock_quantity DESC LIMIT 1;

-- +----------------------+----------------+
-- | title                | stock_quantity |
-- +----------------------+----------------+
-- | Lincoln In The Bardo |           1000 |
-- +----------------------+----------------+

SELECT title, stock_quantity FROM books
ORDER BY stock_quantity LIMIT 1;

-- +---------------+----------------+
-- | title         | stock_quantity |
-- +---------------+----------------+
-- | American Gods |             12 |
-- +---------------+----------------+

