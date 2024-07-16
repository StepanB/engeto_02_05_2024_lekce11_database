-- Všichni autoři a jejich knihy
SELECT a.first_name, a.last_name, b.title
FROM Authors a
JOIN Books b ON a.id = b.author_id;

-- Vypůjčené knihy s informacemi o vypůjčitelích
SELECT b.title, br.first_name, br.last_name, l.loan_date, l.return_date
FROM Loans l
JOIN Books b ON l.book_id = b.id
JOIN Borrowers br ON l.borrower_id = br.id;

-- Knihy vydané po roce 2000
SELECT title, published_date
FROM Books
WHERE published_date > '2000-01-01';

-- Nejvíce vypůjčovaní vypůjčitelé (TOP 3)
SELECT br.first_name, br.last_name, COUNT(l.id) AS loan_count
FROM Loans l
JOIN Borrowers br ON l.borrower_id = br.id
GROUP BY br.first_name, br.last_name
ORDER BY loan_count DESC
LIMIT 3;

-- Všechny knihy od konkrétního autora (např. J.K. Rowling)
SELECT b.title, b.published_date
FROM Books b
JOIN Authors a ON b.author_id = a.id
WHERE a.first_name = 'J.K.' AND a.last_name = 'Rowling';

-- Knihy, které jsou momentálně vypůjčené
SELECT b.title, br.first_name, br.last_name
FROM Loans l
JOIN Books b ON l.book_id = b.id
JOIN Borrowers br ON l.borrower_id = br.id
WHERE l.return_date IS NULL;

-- Počet knih v každém žánru
SELECT genre, COUNT(*) AS book_count
FROM Books
GROUP BY genre;

-- Vypůjčitelé, kteří mají více než jednu půjčku
SELECT br.first_name, br.last_name, COUNT(l.id) AS loan_count
FROM Loans l
JOIN Borrowers br ON l.borrower_id = br.id
GROUP BY br.first_name, br.last_name
HAVING loan_count > 1;

-- Všechny vypůjčené knihy v aktuálním měsíci
SELECT b.title, br.first_name, br.last_name, l.loan_date
FROM Loans l
JOIN Books b ON l.book_id = b.id
JOIN Borrowers br ON l.borrower_id = br.id
WHERE MONTH(l.loan_date) = MONTH(CURRENT_DATE()) AND YEAR(l.loan_date) = YEAR(CURRENT_DATE());
