select upper(reverse('Why does my cat look at me with such hatred?'))
from books;

select replace(title, ' ', '->') as title
from books;

select author_lname as forwards, reverse(author_lname) as backwards
from books;

select upper(concat_ws(' ', author_fname, author_lname))
           as 'full name in caps'
from books;

select concat(title, ' was released in ', released_year) as blurb
from books;

select title, char_length(title) as 'character length'
from books;

select concat(
               substring(title, 1, 10),
               '...'
           ) as 'short title',
       concat(author_lname, ',', author_fname) as 'author',
       concat(stock_quantity, ' in stock') as 'quantity'
from books;