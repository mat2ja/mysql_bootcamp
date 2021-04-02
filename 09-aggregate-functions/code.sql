-- COUNT
SELECT COUNT(*)
FROM books;


SELECT COUNT(DISTINCT author_fname, author_lname)
FROM books;


SELECT COUNT(*)
FROM books
WHERE title LIKE '%the%';


-- GROUP BY
SELECT released_year, COUNT(*) AS 'books released'
FROM books
GROUP BY released_year;


SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released')
FROM books
GROUP BY released_year;


SELECT CONCAT(author_fname, ' ', author_lname) AS 'author',
       COUNT(title)                               'books written',
       SUM(pages)                              AS 'total pages',
       MIN(released_year)                      AS 'release of first book',
       MAX(released_year)                      AS 'release of latest book'
FROM books
GROUP BY author_fname, author_lname;


-- MIN & MAX
SELECT MIN(released_year) AS 'earliest release'
FROM books;

SELECT MAX(pages) AS 'longest book'
FROM books;


# get entire row (title) of book with most pages

# 1 - with SUBQUERIES
SELECT title, pages
FROM books
WHERE pages = (SELECT MAX(pages)
               FROM books);


# 2 - with ORDER BY & LIMIT
SELECT title, pages
FROM books
ORDER BY pages DESC
LIMIT 1;

# MIN & MAX with GROUP BY
SELECT author_fname,
       author_lname,
       MIN(released_year) AS 'first book release'
FROM books
GROUP BY author_lname,
         author_fname;


SELECT CONCAT(author_fname, ' ', author_lname) AS author,
       MAX(pages)                              AS 'longest book'
FROM books
GROUP BY author_lname,
         author_fname;

# SUM
SELECT SUM(pages)
FROM books;


SELECT author_fname, author_lname, SUM(pages)
FROM books
GROUP BY author_fname, author_lname;

# AVG
SELECT AVG(released_year)
FROM books;

SELECT released_year,
       COUNT(book_id)      AS 'book count',
       AVG(stock_quantity) AS 'average stock qnt'
FROM books
GROUP BY released_year;

SELECT CONCAT(author_fname, ' ', author_lname) as author,
           avg(pages)
FROM books
GROUP BY author;