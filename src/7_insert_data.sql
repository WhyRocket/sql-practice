INSERT INTO library.countries (name) VALUES
('USA'),
('UK'),
('Russia'),
('Canada'),
('Germany'),
('France'),
('Japan'),
('China'),
('Italy'),
('Australia');

INSERT INTO library.publishers (name, id_country, city, street, building_number, e_mail, phone_number) VALUES
('Penguin Random House', 1, 'New York', 'Broadway', '1745', 'info@penguinrandomhouse.com', '+1-800-733-3000'),
('HarperCollins', 1, 'New York', '6th Avenue', '195', 'contact@harpercollins.com', '+1-800-242-7737'),
('Macmillan Publishers', 2, 'London', 'Great Russell Street', '4', 'info@macmillan.com', '+44-20-7631-5600'),
('Simon & Schuster', 1, 'New York', 'Avenue of the Americas', '1230', 'info@simonandschuster.com', '+1-800-223-2336'),
('Hachette Livre', 6, 'Paris', 'Rue Jean Bleuzen', '43', 'info@hachette.com', '+33-1-4381-6700'),
('Scholastic', 1, 'New York', 'Broadway', '557', 'info@scholastic.com', '+1-800-724-6527'),
('Bloomsbury', 2, 'London', 'Bedford Square', '50', 'info@bloomsbury.com', '+44-20-7631-5600'),
('Springer', 5, 'Berlin', 'Tiergartenstrasse', '17', 'info@springer.com', '+49-30-827-870'),
('Kodansha', 7, 'Tokyo', 'Otowa', '2-12-21', 'info@kodansha.co.jp', '+81-3-3945-1111'),
('Pearson', 2, 'London', 'The Strand', '80', 'info@pearson.com', '+44-20-7010-2000');

INSERT INTO library.authors (first_name, last_name, patronymic, id_country) VALUES
('J.K.', 'Rowling', NULL, 2),
('Leo', 'Tolstoy', 'Nikolayevich', 3),
('George', 'Orwell', NULL, 2),
('Mark', 'Twain', NULL, 1),
('Fyodor', 'Dostoevsky', 'Mikhailovich', 3),
('Ernest', 'Hemingway', NULL, 1),
('Jane', 'Austen', NULL, 2),
('Gabriel', 'Garcia Marquez', NULL, 8),
('Haruki', 'Murakami', NULL, 7),
('Jules', 'Verne', NULL, 6);

INSERT INTO library.books (title, publishing_year, isbn, publisher_id, age_limit, books_number) VALUES
('Harry Potter and the Philosopher\'s Stone', '1997-06-26', '978-0-7475-3269-9', 1, 12, 500),
('War and Peace', '1869-01-01', '978-0-19-923276-5', 2, 16, 300),
('1984', '1949-06-08', '978-0-452-28423-4', 3, 16, 400),
('The Adventures of Tom Sawyer', '1876-01-01', '978-0-14-132110-3', 4, 12, 200),
('Crime and Punishment', '1866-01-01', '978-0-14-044913-6', 5, 16, 350),
('The Old Man and the Sea', '1952-09-01', '978-0-684-80122-3', 6, 14, 180),
('Pride and Prejudice', '1813-01-28', '978-0-19-953556-9', 7, 12, 250),
('One Hundred Years of Solitude', '1967-05-30', '978-0-06-088328-7', 8, 16, 270),
('Norwegian Wood', '1987-09-04', '978-0-385-31534-1', 9, 16, 220),
('Twenty Thousand Leagues Under the Sea', '1870-06-20', '978-0-14-044422-3', 10, 12, 190);

INSERT INTO library.genres (name) VALUES
('Fantasy'),
('Historical Fiction'),
('Dystopian'),
('Adventure'),
('Philosophical Fiction'),
('Literary Fiction'),
('Romantic Fiction'),
('Magical Realism'),
('Psychological Fiction'),
('Science Fiction');

INSERT INTO library.book_genres (id_genre, id_book) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO library.customers (phone_number, first_name, last_name, patronymic, birthday) VALUES
('+1-202-555-0143', 'John', 'Doe', NULL, '1990-05-15'),
('+1-202-555-0178', 'Jane', 'Smith', 'Anna', '1985-07-20'),
('+1-202-555-0123', 'Michael', 'Brown', NULL, '1988-11-25'),
('+1-202-555-0198', 'Emily', 'Davis', 'Elizabeth', '1992-03-10'),
('+1-202-555-0156', 'David', 'Wilson', NULL, '1975-09-30'),
('+1-202-555-0189', 'Sarah', 'Miller', 'Louise', '1982-04-22'),
('+1-202-555-0134', 'Chris', 'Taylor', NULL, '1995-08-17'),
('+1-202-555-0175', 'Jessica', 'Anderson', 'Marie', '1987-12-05'),
('+1-202-555-0167', 'Daniel', 'Thomas', NULL, '1991-06-14'),
('+1-202-555-0111', 'Laura', 'Jackson', 'Anne', '1980-10-21');

INSERT INTO library.customer_books (id_customer, id_book) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(3, 9),
(4, 10),
(4, 1),
(4, 2),
(5, 3),
(5, 4),
(5, 5),
(6, 6),
(6, 7),
(6, 8),
(7, 9),
(7, 10),
(7, 1),
(8, 2),
(8, 3),
(8, 4),
(9, 5),
(9, 6),
(9, 7),
(10, 8),
(10, 9),
(10, 10);

INSERT INTO library.book_author (id_author, id_book) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);