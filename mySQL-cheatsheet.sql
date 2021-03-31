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


# ----------------------- String functions

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
select concat_ws(' - ',author_fname, author_lname,  released_year) 
	as 'full info'
from books

# SUBSTR or SUBSTRING (starts from 1, both inclusive) SUBTSTRING('string',pos,len)
select substring('Hello World',1,4) # Hell
select substring('Hello World',-3,2) # rl
select concat(substring(title,1,10), '...') as 'short title' from books

# REPLACE
SELECT REPLACE('Hello world', 'Hell', '%$#@');

# REVERSE
select reverse(author_fname) as 'reversed' from books;

# CHAR_LENGTH
select char_length(author_lname) as 'lname len'  from books;
select author_lname, concat('lastname length is ', char_length(author_lname)) from books;