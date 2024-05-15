CREATE TABLE books
(
    Id SERIAL PRIMARY KEY,
    BookTitle CHARACTER VARYING,
    YearOfPublishing DATE,
    ISBN CHARACTER(17),
    PublisherId SERIAL,
    AgeLimit SMALLINT,
    NumberOfBooks SMALLINT
);

CREATE TABLE genres
(
    Id SERIAL,
    Genre CHARACTER VARYING(20)
);

CREATE TABLE book_genre
(
    IdGenre SERIAL REFERENCES genres (Id) ON DELETE CASCADE,
    IdBook SERIAL REFERENCES books (Id) ON DELETE CASCADE
);