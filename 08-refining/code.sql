-- DISTINCT
SELECT DISTINCT author_lname
FROM books;

SELECT DISTINCT CONCAT(author_fname, ' ', author_lname)
FROM books;

SELECT DISTINCT author_fname, author_lname
FROM books;

-- ORDER BY
SELECT title, released_year
FROM books
ORDER BY released_year DESC; # sort descending

SELECT title, author_fname, author_lname
FROM books
ORDER BY 2;

SELECT author_fname, author_lname
FROM books
ORDER BY 2, 1;

-- LIMIT
SELECT title, released_year
FROM books
ORDER BY released_year DESC
LIMIT 5; # same as LIMIT 0, 5

SELECT title, released_year
FROM books
ORDER BY released_year DESC
LIMIT 3,2; # gives you 4th and 5th books (starts from 4th row)

SELECT title, released_year
FROM books
ORDER BY released_year DESC
LIMIT 10,238932898929823223;
# from 11th row to the end (end is some random huge number)

-- LIKE
SELECT title, author_fname, author_lname
FROM books
WHERE author_fname LIKE 'da%';

SELECT title, author_fname, author_lname
FROM books
WHERE title LIKE '%the%';
# WHERE title REGEXP 'the';

SELECT title, stock_quantity
FROM books
WHERE stock_quantity LIKE '____'; # 4 chars

SELECT title, stock_quantity
FROM books
WHERE title LIKE '% ki__%';

SELECT title, stock_quantity
FROM books
WHERE title LIKE '%\%%'