# number of books in database
SELECT COUNT(*) AS 'books in database'
FROM books;


# books released per year
SELECT released_year,
       COUNT(*)
FROM books
GROUP BY released_year;


# total amount of books in stock
SELECT SUM(stock_quantity) AS 'total books'
FROM books;


# avg released year for each author
SELECT CONCAT(author_fname, ' ', author_lname),
       AVG(released_year) AS 'average release'
FROM books
GROUP BY author_fname, author_lname;


# full name of author with the longest book
-- this one is faster bcs its only 1 query
SELECT CONCAT(author_fname, ' ', author_lname, ' has the longest book: ', pages, ' pages!!!')
FROM books
ORDER BY pages DESC
LIMIT 1;

SELECT CONCAT(author_fname, ' ', author_lname, ' wrote ', pages, ' pages')
FROM books
WHERE pages = (SELECT MAX(pages)
               FROM books);


# make this happen
SELECT released_year AS year,
       COUNT(*)      AS books,
       AVG(pages)    AS 'avg pages'
FROM books
GROUP BY 1;
