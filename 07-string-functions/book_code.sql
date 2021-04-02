select concat
           (
               SUBSTRING(title, 1, 10),
               '...')
    as 'short title'
FROM books;


SELECT concat_ws(' - ', author_fname, author_lname, released_year) as 'full info'
FROM books;


select replace(title, 'e', '3')
FROM books;


select SUBSTRING(replace(title, 'e', '3'), 1, 10) as 'weird string'
FROM books;


SELECT CONCAT(author_fname, reverse(author_fname))
FROM books;


select concat('MY FAVORITE BOOKS IS ', UPPER(title))
FROM books;
