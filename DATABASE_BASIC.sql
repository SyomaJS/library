SHOW DATABASES;

CREATE DATABASE nameDB;

DROP DATABASE nameDB;

USE DATABASE nameDB;

SHOW TABLES;

CREATE TABLE IF NOT EXISTS nameDB (
    first name VARCHAR(64),
    second_name VARCHAR(64),
    age INTEGER,
    gender VARCHAR(8)
);

RENAME TABLE 1nameDB TO 2nameDB

SHOW COLUMNS FROM 

--! FOR TABLE NI POLNIY BOSHATISH UCHUN:
TRUNCATE TABLE nameTB; 

--! SORT (ORDER BY) `DESC` - KAMAYISH TARTIBIDA:
SELECT first_name, second_name, age 
FROM student 
ORDER BY first_name ASC;

SELECT first_name, second_name, age 
FROM student 
ORDER BY first_name DESC;

SELECT * FROM student  
LIMIT 3 OFFSET 4;


--! LIKE
SELECT * 
FROM student 
WHERE first_name LIKE "Jon";


SELECT * 
FROM student 
WHERE second_name LIKE "__ov";

SELECT * 
FROM student 
WHERE second_name LIKE "K____ov";

SELECT * 
FROM student 
WHERE phone_number LIKE "+99890%";


--! IN - ICHIDA ||| ichida bo'lsa ko'rsatadi.
SELECT * 
FROM student 
WHERE first_name IN ('Jackie', 'Angela', 'Burgutali');

SELECT * 
FROM student 
WHERE age IN (20,25,63);

--! SUM AVG MIN MAX COUNT:
SELECT sum(age) from student
WHERE age < 30;

SELECT MIN(age) 
FROM student;

SELECT MIN(first_name) 
FROM student;

--COUNT
SELECT COUNT(*) 
FROM student;

SELECT COUNT(*) 
FROM student 
WHERE age > 25;

SELECT COUNT(DISTINCT age) 
FROM student;

SELECT COUNT(*) 
FROM student 
WHERE gender="Male";

-- !GROUP BY 
SELECT COUNT(*) FROM student   
GROUP BY age   
HAVING COUNT(*)>=1; 


--!jadvalga yangi field qo'shish.
ALTER TABLE student 
ADD Email VARCHAR(255);
--!jadvaldan fieldni o'chirish.
ALTER TABLE student 
DROP COLUMN Email;

--! MODIFY 
ALTER TABLE student 
MODIFY COLUMN DateOfBirth YEAR; 


--! UPDATE - YANGILASH
UPDATE student 
SET DateOfBirth = NULL
WHERE first_name = 'BEXRUZ';



ALTER TABLE student 
MODIFY COLUMN DateOfBirth YEAR; 

UPDATE student 
SET DateOfBirth = 2023 - age ;

DELETE FROM student 
WHERE age = 22;  

--! unicale
SELECT COUNT(DISTINCT nomi) 
FROM mevalar;



--! JOIN INNER JOIN :
