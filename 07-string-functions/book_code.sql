select concat
           (
               substring(title, 1, 10),
               '...')
           as 'short title'
from books;

select concat_ws(' - ', author_fname, author_lname, released_year) as 'full info'
from books;

select replace(title, 'e', '3')
from books;

select substring(replace(title, 'e', '3'), 1, 10) as 'weird string'
from books;

SELECT CONCAT(author_fname, reverse(author_fname))
from books;

select concat('MY FAVORITE BOOKS IS ', upper(title))
from books;