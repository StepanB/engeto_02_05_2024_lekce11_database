INSERT INTO Authors (first_name, last_name, birthdate) VALUES ('J.K.', 'Rowling', '1965-07-31');
INSERT INTO Authors (first_name, last_name, birthdate) VALUES ('J.R.R.', 'Tolkien', '1892-01-03');
INSERT INTO Authors (first_name, last_name, birthdate) VALUES ('Agatha', 'Christie', '1890-09-15');
INSERT INTO Authors (first_name, last_name, birthdate) VALUES ('Mark', 'Twain', '1835-11-30');
INSERT INTO Authors (first_name, last_name, birthdate) VALUES ('Jane', 'Austen', '1775-12-16');

INSERT INTO Books (title, author_id, genre, published_date) VALUES ('Harry Potter and the Sorcerers Stone', 1, 'Fantasy', '1997-06-26');
INSERT INTO Books (title, author_id, genre, published_date) VALUES ('The Hobbit', 2, 'Fantasy', '1937-09-21');
INSERT INTO Books (title, author_id, genre, published_date) VALUES ('Murder on the Orient Express', 3, 'Mystery', '1934-01-01');
INSERT INTO Books (title, author_id, genre, published_date) VALUES ('The Adventures of Tom Sawyer', 4, 'Adventure', '1876-01-01');
INSERT INTO Books (title, author_id, genre, published_date) VALUES ('Pride and Prejudice', 5, 'Romance', '1813-01-28');
INSERT INTO Books (title, author_id, genre, published_date) VALUES ('Harry Potter and the Chamber of Secrets', 1, 'Fantasy', '1998-07-02');
INSERT INTO Books (title, author_id, genre, published_date) VALUES ('The Lord of the Rings: The Fellowship of the Ring', 2, 'Fantasy', '1954-07-29');
INSERT INTO Books (title, author_id, genre, published_date) VALUES ('The Lord of the Rings: The Two Towers', 2, 'Fantasy', '1954-11-11');
INSERT INTO Books (title, author_id, genre, published_date) VALUES ('The Lord of the Rings: The Return of the King', 2, 'Fantasy', '1955-10-20');
INSERT INTO Books (title, author_id, genre, published_date) VALUES ('And Then There Were None', 3, 'Mystery', '1939-11-06');

INSERT INTO Borrowers (first_name, last_name, email) VALUES ('Alice', 'Smith', 'alice.smith@example.com');
INSERT INTO Borrowers (first_name, last_name, email) VALUES ('Bob', 'Johnson', 'bob.johnson@example.com');
INSERT INTO Borrowers (first_name, last_name, email) VALUES ('Charlie', 'Brown', 'charlie.brown@example.com');
INSERT INTO Borrowers (first_name, last_name, email) VALUES ('David', 'Wilson', 'david.wilson@example.com');
INSERT INTO Borrowers (first_name, last_name, email) VALUES ('Eva', 'Davis', 'eva.davis@example.com');

INSERT INTO Loans (book_id, borrower_id, loan_date, return_date) VALUES (1, 1, '2023-01-01', '2023-01-15');
INSERT INTO Loans (book_id, borrower_id, loan_date, return_date) VALUES (2, 2, '2023-01-05', '2023-01-20');
INSERT INTO Loans (book_id, borrower_id, loan_date, return_date) VALUES (3, 3, '2023-01-10', '2023-01-25');
INSERT INTO Loans (book_id, borrower_id, loan_date, return_date) VALUES (4, 4, '2023-01-15', '2023-01-30');
INSERT INTO Loans (book_id, borrower_id, loan_date, return_date) VALUES (5, 5, '2023-01-20', '2023-02-05');
INSERT INTO Loans (book_id, borrower_id, loan_date, return_date) VALUES (6, 1, '2023-02-01', '2023-02-15');
INSERT INTO Loans (book_id, borrower_id, loan_date, return_date) VALUES (7, 2, '2023-02-05', '2023-02-20');
INSERT INTO Loans (book_id, borrower_id, loan_date, return_date) VALUES (8, 3, '2023-02-10', '2023-02-25');
INSERT INTO Loans (book_id, borrower_id, loan_date, return_date) VALUES (9, 4, '2023-02-15', '2023-03-01');
INSERT INTO Loans (book_id, borrower_id, loan_date, return_date) VALUES (10, 5, '2023-02-20', '2023-03-05');
