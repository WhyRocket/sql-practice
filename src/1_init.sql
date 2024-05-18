CREATE DATABASE sql_practice;

CREATE SCHEMA library;

CREATE TABLE library.books
(
    id SERIAL PRIMARY KEY,
    title VARCHAR(1000) NOT NULL,
    publishing_year DATE NOT NULL,
    isbn CHAR(17) NOT NULL,
    publisher_id INTEGER NOT NULL,
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
    id_genre INTEGER REFERENCES genres (Id) ON DELETE RESTRICT,
    id_book INTEGER REFERENCES books (Id) ON DELETE CASCADE,
    PRIMARY KEY (id_genre, id_book)
);