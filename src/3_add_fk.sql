ALTER TABLE library.publishers
ADD FOREIGN KEY (id_country) REFERENCES country (id);

ALTER TABLE library.authors
ADD FOREIGN KEY (id_country) REFERENCES country (id);