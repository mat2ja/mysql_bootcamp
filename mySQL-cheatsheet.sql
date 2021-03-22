SHOW DATABASES
CREATE DATABASE <name>
DROP DATABASE <name>
USE DATABASE <name>
SELECT DATABASE()

CREATE TABLE <table_name> (<name1> type1, <name2> type2)
CREATE TABLE <table_name> (
	<moj_id> INT AUTO_INCREMENT NOT NULL
	<name1> type1 DEFAULT 'unnamed', 
	<name2> type2 NOT NULL,
	PRIMARY KEY (moj_id)
)

SHOW TABLES

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