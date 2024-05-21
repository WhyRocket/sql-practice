ALTER TABLE library.book_genres
RENAME TO books_genres

ALTER TABLE library.customer
RENAME TO customers;

ALTER TABLE library.customer_books
RENAME TO customers_books;

ALTER TABLE library.publisher
RENAME TO publishers;

ALTER TABLE library.author
RENAME TO authors;

ALTER TABLE library.book_author
RENAME TO books_authors

ALTER TABLE library.country
RENAME TO countrys;

ALTER TABLE library.publishers
ADD FOREIGN KEY (id_country) REFERENCES country (id);

ALTER TABLE library.authors
ADD FOREIGN KEY (id_country) REFERENCES country (id);