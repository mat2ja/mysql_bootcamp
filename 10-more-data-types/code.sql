CREATE TABLE people
(
    name      VARCHAR(50) NOT NULL,
    birthDate DATE,
    birthTime TIME,
    birthdt   DATETIME
);

INSERT INTO people(name, birthDate, birthTime, birthdt)
VALUES ('Marija', '1998-07-20', '17:20:35', '1998-07-20 17:20:35'),
       ('Matija', '1999-10-12', '11:27:58', '1999-10-12 11:27:58'),
       ('Marian', '2000-11-01', '20:46:12', '2000-11-01 20:46:12');

# date
SELECT CURDATE();
SELECT CURRENT_DATE;
SELECT CURRENT_DATE();

# time
SELECT CURTIME();
SELECT CURRENT_TIME;
SELECT CURRENT_TIME();

# datetime
SELECT NOW();
SELECT CURRENT_TIMESTAMP;
SELECT CURRENT_TIMESTAMP();


INSERT INTO people
VALUES ('Microwave', CURDATE(), CURTIME(), NOW());

SELECT name,
       DAYNAME(birthDate),
       MONTHNAME(birthDate),
       DAYOFWEEK(birthDate),
       DAYOFMONTH(birthDate),
       DAY(birthDate),
       DAYOFYEAR(birthDate)
FROM people;

SELECT name,
       HOUR(birthTime),
       MINUTE(birthTime),
       SECOND(birthTime)
FROM people;


SELECT *
FROM people
WHERE MONTH(birthDate) = MONTH(ADDDATE(CURRENT_DATE, INTERVAL 3 MONTH));

# bad way
SELECT birthDate, CONCAT_WS(' ', MONTHNAME(birthDate), DAY(birthDate), YEAR(birthDate))
FROM people;

SELECT DATE_FORMAT(birthDate, '%W, %M %D %Y'), DATE_FORMAT(birthdt, '%m/%d/%Y at %H:%m')
FROM people;

SELECT name, birthdate, DATEDIFF(NOW(), birthDate) AS 'days ago'
FROM people;

SELECT birthDate, DATE_ADD(birthDate, INTERVAL 4 YEAR)
FROM people;

SELECT birthdt, birthdt + INTERVAL 10 YEAR + INTERVAL 2 MONTH
FROM people;

CREATE TABLE comments
(
    content    VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO comments (content)
VALUES ('nice');

SELECT *
FROM comments
ORDER BY created_at DESC;

CREATE TABLE comments2
(
    content    VARCHAR(100),
    changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO comments2 (content)
VALUES ('im bilingual');

SELECT *
FROM comments2;

UPDATE comments2
SET content='what a screamer'
WHERE content LIKE 'what a%';

SELECT *
FROM comments2
ORDER BY changed_at;
