SHOW DATABASES;
CREATE DATABASE mydb;
DROP DATABASE mydb;
USE DATABASE mydb;
SELECT DATABASE();

CREATE TABLE <table_name> (<name1> type1, <name2> type2)
CREATE TABLE <table_name> (
	<moj_id> INT AUTO_INCREMENT NOT NULL
	<name1> type1 DEFAULT 'unnamed', 
	<name2> type2 NOT NULL,
	PRIMARY KEY (moj_id)
);

SHOW TABLES;

SHOW COLUMNS FROM <table_name>
DESC <table_name>

INSERT INTO <table_name>(<name1>,<name2>) 
VALUES (<value1>, <value2>)

SHOW WARNINGS
SHOW ERRORS

# -------------- C R U D (create read update delete)

# READ
SELECT * FROM cats;
SELECT name,age FROM cats;
SELECT cat_id as 'kitty id', name FROM cats
SELECT * FROM books WHERE author_fname LIKE 'neil'

# UPDATE
UPDATE cats SET breed='Shorthair' WHERE breed='Tabby'

# DELETE
DELETE FROM cats WHERE name='Egg'
DELETE FROM cats # delete everything


----------------------- String functions

# CONCAT
SELECT CONCAT(author_fname, ' ', author_lname) as 'full name' FROM books

select author_fname as first, author_lname as last,
       concat(author_fname,' ', author_lname) as full
from books

select author_fname as first, author_lname as last,
       concat(author_fname,' ', author_lname) as full,
       concat('Knjiga mi releaseana u ', released_year) as 'moj release'
from books

# CONCAT_WS - first argument is the seperator
select CONCAT_WS(' - ',author_fname, author_lname,  released_year) 
	as 'full info'
from books

# SUBSTR or SUBSTRING (starts from 1, both inclusive) SUBTSTRING('string',pos,len)
select SUBTSTRING('Hello World',1,4) # Hell
select SUBTSTRING('Hello World',-3,2) # rl
select CONCAT(SUBTSTRING(title,1,10), '...') as 'short title' from books

# REPLACE
SELECT REPLACE('Hello world', 'Hell', '%$#@');

# REVERSE
select REVERSE(author_fname) as 'reversed' from books;

# CHAR_LENGTH
select CHAR_LENGTH(author_lname) as 'lname len'  from books;
select CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long')
from books;

# UPPER(), LOWER()
select UPPER(concat_ws(' ', author_fname, author_lname))
           as 'full name in caps'
from books;

----------------------------

# DISTINCT
SELECT DISTINCT author_lname FROM books;
-- SELECT DISTINCT concat(author_fname, ' ', author_lname)FROM books;
SELECT DISTINCT author_fname, author_lname from books

# ORDER BY 
SELECT title FROM books ORDER BY title # (ascending)
SELECT title FROM books ORDER BY title ASC # (ascending)
SELECT title FROM books ORDER BY title DESC # (descending)

SELECT title, author_fname, author_lname
FROM books
ORDER BY 2; # order by 2nd selected column (author_fname)

SELECT author_fname, author_lname
FROM books
ORDER BY 1, 2; # multiple sorting

# LIMIT
SELECT title, released_year
FROM books
ORDER BY released_year DESC
LIMIT 5 # starts from 0th row, same as LIMIT 0, 5

SELECT title, released_year
FROM books
ORDER BY released_year DESC
LIMIT 4,10 # start from 4th row and limit 10

SELECT title, released_year
FROM books
ORDER BY released_year DESC
LIMIT 4, 94382892349823 # start any row to end

