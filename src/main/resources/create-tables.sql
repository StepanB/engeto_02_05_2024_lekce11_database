CREATE TABLE Authors (
                         id INT PRIMARY KEY AUTO_INCREMENT,
                         first_name VARCHAR(100),
                         last_name VARCHAR(100),
                         birthdate DATE
);

CREATE TABLE Books (
                       id INT PRIMARY KEY AUTO_INCREMENT,
                       title VARCHAR(255),
                       author_id INT,
                       genre VARCHAR(100),
                       published_date DATE,
                       FOREIGN KEY (author_id) REFERENCES Authors(id)
);

CREATE TABLE Borrowers (
                           id INT PRIMARY KEY AUTO_INCREMENT,
                           first_name VARCHAR(100),
                           last_name VARCHAR(100),
                           email VARCHAR(255)
);

CREATE TABLE Loans (
                       id INT PRIMARY KEY AUTO_INCREMENT,
                       book_id INT,
                       borrower_id INT,
                       loan_date DATE,
                       return_date DATE,
                       FOREIGN KEY (book_id) REFERENCES Books(id),
                       FOREIGN KEY (borrower_id) REFERENCES Borrowers(id)
);
