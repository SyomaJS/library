CREATE TABLE Clients (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  address VARCHAR(255),
  contact_number VARCHAR(20),
  email VARCHAR(255),
  registration_date DATE
);

CREATE TABLE Stuff (
  id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  position VARCHAR(255),
  contact_number VARCHAR(20),
  email VARCHAR(255),
  hire_date DATE
);

CREATE TABLE Books (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255),
  author VARCHAR(255),
  genre VARCHAR(255),
  publication_year INT,
  availability BOOLEAN
);


CREATE TABLE BookLoans (
  id INT PRIMARY KEY AUTO_INCREMENT,
  client_id INT,
  book_id INT,
  loan_date DATE,
  FOREIGN KEY (client_id) REFERENCES Clients(id),
  FOREIGN KEY (book_id) REFERENCES Books(id)
);



-- clients 
INSERT INTO Clients (first_name, last_name, address, contact_number, email, registration_date)
VALUES ('John', 'Doe', '123 Main St', '555-1234', 'john.doe@example.com', '2023-01-15'),
('Jane', 'Smith', '456 Elm St', '555-5678', 'jane.smith@example.com', '2023-02-20'),
('Michael', 'Johnson', '789 Oak Ave', '555-9101', 'michael.johnson@example.com', '2023-03-10');

-- stuff 
INSERT INTO Stuff (first_name, last_name, position, contact_number, email, hire_date)
VALUES ('Robert', 'Williams', 'Librarian', '555-2468', 'robert.williams@example.com', '2022-05-01'),
 ('Emily', 'Anderson', 'Assistant Librarian', '555-3691', 'emily.anderson@example.com', '2022-06-15');


-- booksss 
INSERT INTO Books (title, author, genre, publication_year, availability)
VALUES 
('To Kill Mongbird', 'Harper Lee', 'Fiction', 1960, 1),
('1984', 'George Orwell', 'Dystopian', 1949, 1);

--  BookLoans 
INSERT INTO BookLoans (client_id, book_id, loan_date)
VALUES
 (1, 1, '2023-05-20'),
 (2, 2, '2023-05-15'),
 (3, 1, '2023-05-10');


SELECT Clients.id, Clients.first_name, Clients.last_name, Stuff.position
FROM Clients
JOIN Stuff ON Clients.id = Stuff.id;
