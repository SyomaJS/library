CREATE DATABASE users;

USE users;

create table users (
	id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	age INTEGER,
	gender VARCHAR(50),
	ip_address VARCHAR(20)
);


SELECT *FROM users;

RENAME TABLE users TO employers;

SELECT id, first_name, age, gender FROM employers
ORDER BY first_name;


ALTER TABLE employers
DROP COLUMN age;

SELECT id, first_name, gender FROM employers
ORDER BY first_name;


UPDATE employers
SET gender = 'mujik'
WHERE gender != 'Male' and gender != 'Female';

DELETE FROM employers
WHERE gender != 'Male' and gender != 'Female'

SELECT COUNT(*) FROM employers 
WHERE id BETWEEN 33 AND 55
;

--! UPPER CASE
SELECT id, UPPER(first_name) FROM employers;

--! LOWER CASE

SELECT id, LOWER(last_name) FROM employers;

SELECT id, UPPER(last_name), UPPER( first_name)
FROM employers 
WHERE first_name LIKE '%ne';


SELECT LEFT(first_name, 5) FROM employers;
SELECT id, first_name, RIGHT(first_name, 3) FROM employers;


SELECT id, first_name, SUBSTRING(first_name, 2, 4) FROM employers;

--! After 3rd CHARACTER it gets 1 CHARACTER:
SELECT id, first_name, SUBSTR(first_name, 3, 1) FROM employers;


--?>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Country VARCHAR(50)
);

INSERT INTO Customers (FirstName, LastName, Country)
VALUES
    ('John', 'Doe', 'USA'),
    ('Jane', 'Smith', 'Canada'),
    ('David', 'Lee', 'USA'),
    ('Emma', 'Johnson', 'UK'),
    ('Luis', 'Garcia', 'Mexico');

    SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country;



--?>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

CREATE TABLE Person (
  personId INT PRIMARY KEY,
  lastName VARCHAR(64),
  firstName VARCHAR(64)
);



CREATE TABLE Address (
  addressId INT PRIMARY KEY,
  personId INT,
  city VARCHAR(64),
  state VARCHAR(64),
  FOREIGN KEY (personId) REFERENCES Person(personId)
);





-- Insert into Person table
a

-- Insert into Address table
INSERT INTO Address (addressId, personId, city, state)
VALUES (1, 2, 'New York City', 'New York'),
       (2, 1, 'Leetcode', 'California');


CREATE TABLE Client (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age BIGINT,
  order_id INT
  Foreign Key (order_id) REFERENCES Orders(id);
);


CREATE TABLE Orders (
  id serial PRIMARY KEY,
  nameOrder VARCHAR(255)
);


ALTER TABLE Client ADD  Foreign Key (order_id) REFERENCES Orders (id);

ALTER TABLE Client ADD FOREIGN KEY (order_id) REFERENCES Orders(id);


CREATE TABLE Client (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age BIGINT,
  order_id BIGINT NOT NULL,
  FOREIGN KEY (order_id) REFERENCES Orders(id)
);


CREATE TABLE Orders (
  id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  nameOrder VARCHAR(255)
);


