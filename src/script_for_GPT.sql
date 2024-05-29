CREATE SCHEMA library;

CREATE TABLE library.books
(
    id SERIAL PRIMARY KEY,
    title VARCHAR(1000) NOT NULL,
    publishing_year DATE NOT NULL,
    isbn CHAR(17) NOT NULL,
    publisher_id INTEGER NOT NULL REFERENCES publisher (id) ON DELETE RESTRICT,
    age_limit SMALLINT NOT NULL,
    books_number SMALLINT NOT NULL
);

CREATE TABLE library.genres
(
    id SERIAL PRIMARY KEY,
    "name" VARCHAR(20) NOT NULL
);

CREATE TABLE library.book_genres
(
    id_genre INTEGER REFERENCES genres (id) ON DELETE RESTRICT,
    id_book INTEGER REFERENCES books (id) ON DELETE CASCADE,
    PRIMARY KEY (id_genre, id_book)
);

CREATE TABLE library.customers
(
    id SERIAL PRIMARY KEY,
    phone_number VARCHAR(17) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    patronymic VARCHAR(100),
    birthday DATE NOT NULL
);

CREATE TABLE library.customer_books
(
    id SERIAL PRIMARY KEY,
    id_customer INTEGER REFERENCES customer (id) ON DELETE RESTRICT,
    id_book INTEGER REFERENCES books (id) ON DELETE RESTRICT
);

CREATE TABLE library.publishers
(
    id SERIAL PRIMARY KEY,
    "name" VARCHAR(100) NOT NULL,
    id_country INTEGER NOT NULL,
    city VARCHAR(100) NOT NULL,
    street VARCHAR(100) NOT NULL,
    building_number VARCHAR(100) NOT NULL,
    e_mail VARCHAR(200),
    phone_number VARCHAR(17)
);

CREATE TABLE library.authors
(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    patronymic VARCHAR(100),
    id_country INTEGER NOT NULL
);

CREATE TABLE library.book_author
(
    id_author INTEGER REFERENCES author (id) ON DELETE RESTRICT,
    id_book INTEGER REFERENCES books (id) ON DELETE CASCADE,
    PRIMARY KEY (id_author, id_book)
);

CREATE TABLE library.countries
(
    id SERIAL PRIMARY KEY,
    "name" VARCHAR(100) NOT NULL
);

ALTER TABLE library.publishers
ADD FOREIGN KEY (id_country) REFERENCES countries (id);

ALTER TABLE library.authors
ADD FOREIGN KEY (id_country) REFERENCES countries (id);