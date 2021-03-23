select
       concat
           (
            substring(title,1,10),
            '...')
        as 'short title'
from books;

select
       concat_ws(' - ',author_fname, author_lname,  released_year) as 'full info'
from books;