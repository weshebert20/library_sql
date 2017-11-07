-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns

-- Get all information about all authors
SELECT * FROM authors;
-- Get just the name and birth year of all authors
SELECT name, birth_year FROM authors;
-- Get all authors born in the 20th centruy or later
SELECT name, birth_year FROM authors WHERE birth_year > 1900;
-- Get all authors born in the USA
SELECT name, birth_year FROM authors WHERE nationality = 'United States of America';
-- Get all books published on 1985
SELECT * FROM books WHERE publication_date = 1985;
-- Get all books published before 1989
SELECT * FROM books WHERE publication_date < 1989;
-- Get just the title of all books.
SELECT title FROM books;
-- Get just the year that 'A Dance with Dragons' was published
  -- Cry when you realize how long it's been
SELECT publication_date FROM books WHERE title = 'A Dance with Dragons';
-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
SELECT title FROM books WHERE title LIKE '%the%';
-- Add yourself as an author
INSERT INTO authors VALUES (9, 'Wesley Hebert','United States of America', 1987);
-- Add two books that you'd like to write (you can hard-code your id as the author id)
INSERT INTO books VALUES (200, 'A New Earth','2006', 9);
INSERT INTO books VALUES (201, 'Ready Player One','2013', 9);
-- Update one of your books to have a new title
UPDATE books SET publication_date = 2007 WHERE title = 'A New Earth';
-- Delete your books
DELETE FROM books WHERE title = 'A New Earth';
-- Delete your author entry
DELETE FROM authors WHERE name = 'Wesley Hebert';