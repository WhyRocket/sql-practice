CREATE DATABASE sql_practice;

CREATE SCHEMA library;

CREATE TABLE library.books
(
    id SERIAL PRIMARY KEY,
    title VARCHAR(1000),
    publishing_year DATE,
    isbn CHAR(17),
    publisher_id SERIAL,
    age_limit SMALLINT,
    books_number SMALLINT
);

CREATE TABLE library.genres
(
    id SERIAL PRIMARY KEY,
    genre VARCHAR(20)
);

CREATE TABLE library.book_genres
(
    id_genre INTEGER REFERENCES genres (Id) ON DELETE SET NULL,
    id_book INTEGER REFERENCES books (Id) ON DELETE CASCADE
);