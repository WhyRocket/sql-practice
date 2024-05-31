SELECT books.title, books.publishing_year,
publishers.name,
authors.first_name, authors.last_name, authors.patronymic
FROM books
JOIN publishers ON publishers.id = books.publisher_id
JOIN book_author ON book_author.id_book = Books.id
JOIN authors ON authors.id = book_author.id_author
WHERE (publishers.name = 'Penguin Random House');

SELECT books.title, books.publishing_year,
authors.first_name, authors.last_name, authors.patronymic
FROM books
JOIN book_author ON book_author.id_book = Books.id
JOIN authors ON authors.id = book_author.id_author
WHERE (Books.publishing_year > '1900-01-01');

SELECT books.title, books.publishing_year,
authors.first_name, authors.last_name, authors.patronymic
FROM books
JOIN book_author ON book_author.id_book = Books.id
JOIN authors ON authors.id = book_author.id_author
WHERE (authors.first_name = 'Fyodor' AND authors.last_name = 'Dostoevsky' AND authors.patronymic = 'Mikhailovich');

SELECT books.title, books.publishing_year,
authors.first_name, authors.last_name, authors.patronymic,
customers.first_name, customers.last_name, customers.patronymic
FROM books
JOIN customer_books ON customer_books.id_book = books.id
JOIN customers ON customers.id = customer_books.id_customer
JOIN book_author ON book_author.id_book = books.id
JOIN authors ON authors.id = book_author.id_author
WHERE (customers.phone_number = '+1-202-555-0189');

SELECT books.title, books.publishing_year,
authors.first_name, authors.last_name, authors.patronymic
FROM books
JOIN book_genres ON book_genres.id_book = books.id
JOIN genres ON genres.id = book_genres.id_genre
JOIN book_author ON book_author.id_book = books.id
JOIN authors ON authors.id = book_author.id_author
WHERE (genres.name = 'Science Fiction');

SELECT books.title, books.publishing_year,
authors.first_name, authors.last_name, authors.patronymic, author_country,
publishers.name, publisher_country, publishers.city, publishers.street, publishers.building_number, publishers.e_mail, publishers.phone_number
FROM books
JOIN book_author ON book_author.id_book = books.id
JOIN authors ON authors.id = book_author.id_author
JOIN publishers ON publishers.id = books.publisher_id
JOIN countries AS publisher_country ON publisher_country.id = publishers.id_country
JOIN countries AS author_country ON author_country.id = authors.id_country;

SELECT books.title, books.publishing_year, COUNT(*) AS taken_customer
FROM books
JOIN customer_books ON customer_books.id_book = books.id
JOIN customers ON customers.id = customer_books.id_customer
GROUP BY books.title, books.publishing_year;