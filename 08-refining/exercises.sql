# contains word stories
SELECT title
FROM books
WHERE title LIKE '%stories%';


# longest book
SELECT title, pages
FROM books
ORDER BY pages DESC
LIMIT 1;


# summary containing title and year, for the 3 most recent books
SELECT CONCAT(title, ' - ', released_year) AS 'summary'
FROM books
ORDER BY released_year DESC
LIMIT 3;


# authors last names containing space char
SELECT title, author_lname
FROM books
WHERE author_lname LIKE '% %';


# 3 books with the lowest stock
SELECT title, released_year, stock_quantity
FROM books
ORDER BY stock_quantity
LIMIT 3;


# title and author lname, sorted by lname, title
SELECT title, author_lname
FROM books
ORDER BY 2, 1;


# sort alphabetically by last name and yell (i added distinct)
SELECT DISTINCT UPPER(
                        CONCAT(
                                CONCAT_WS(' ', 'MY FAVORITE AUTHOR IS', author_fname, author_lname),
                                '!')
                    ) AS 'yell'
FROM books
ORDER BY author_lname;


SELECT CONCAT(
               'MY FAVORITE AUTHOR IS ',
               UPPER(author_fname),
               ' ',
               UPPER(author_lname),
               '!'
           ) AS 'yell'
FROM books
ORDER BY author_lname;
