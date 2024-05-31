-- Скрипты с описанием задания для выборки данных из базы данных

-- Получение списка книг, опубликованных определенным издательством (например, "Издательство 1")
SELECT 
    b.title book_title, 
    b.publishing_year,
    p.name publisher,
    a.first_name author_first_name, 
    a.last_name author_last_name, 
    a.patronymic author_patronymic
FROM books b
JOIN publishers p ON p.id = b.publisher_id
JOIN book_author ba ON ba.id_book = b.id
JOIN authors a ON a.id = ba.id_author
WHERE p.name LIKE '%Penguin Random House%';

-- Получение списка книг, выпущенных после определенного года (например, 2010)
SELECT 
    b.title book_title, 
    b.publishing_year,
    a.first_name author_first_name, 
    a.last_name author_last_name, 
    a.patronymic author_patronymic
FROM books b
JOIN book_author ba ON ba.id_book = b.id
JOIN authors a ON a.id = ba.id_author
WHERE b.publishing_year > '1900-01-01';

-- Получение списка книг, написанных определенным автором (например, "Имя Фамилия")
SELECT 
    b.title book_title, 
    b.publishing_year,
    a.first_name author_first_name, 
    a.last_name author_last_name, 
    a.patronymic author_patronymic
FROM books b
JOIN book_author ba ON ba.id_book = b.id
JOIN authors a ON a.id = ba.id_author
WHERE a.first_name LIKE '%Fyodor%' AND a.last_name LIKE '%Dostoevsky%' AND a.patronymic LIKE '%Mikhailovich%';

-- Получение списка книг, которые взял определенный клиент (например, с номером телефона "+7 960 567 87 12")
SELECT 
    b.title book_title, 
    b.publishing_year,
    a.first_name author_first_name, 
    a.last_name author_last_name, 
    a.patronymic author_patronymic,
    c.first_name customer_first_name, 
    c.last_name customer_last_name, 
    c.patronymic customer_patronymic
FROM books b
JOIN customer_books cb ON cb.id_book = b.id
JOIN customers c ON c.id = cb.id_customer
JOIN book_author ba ON ba.id_book = b.id
JOIN authors a ON a.id = ba.id_author
WHERE c.phone_number LIKE '%+1-202-555-0189%';

-- Получение списка книг определенного жанра (например, "Фантастика")
SELECT 
    b.title book_title, 
    b.publishing_year,
    a.first_name author_first_name, 
    a.last_name author_last_name, 
    a.patronymic author_patronymic
FROM books b
JOIN book_genres bg ON bg.id_book = b.id
JOIN genres g ON g.id = bg.id_genre
JOIN book_author ba ON ba.id_book = b.id
JOIN authors a ON a.id = ba.id_author
WHERE g.name LIKE '%Science Fiction%';

-- Получение списка книг с информацией об авторах и издателях
SELECT 
    b.title book_title, 
    b.publishing_year,
    a.first_name author_first_name, 
    a.last_name author_last_name, 
    a.patronymic author_patronymic, 
    ac.name author_country,
    p.name publisher_name, 
    pc.name publisher_country, 
    p.city publisher_city, 
    p.street publisher_street, 
    p.building_number publisher_building_number, 
    p.e_mail publisher_e-mail, 
    p.phone_number publisher_phone_number
FROM books b
JOIN book_author ba ON ba.id_book = b.id
JOIN authors a ON a.id = ba.id_author
JOIN publishers p ON p.id = b.publisher_id
JOIN countries pc ON pc.id = p.id_country
JOIN countries ac ON ac.id = a.id_country;

-- Получение списка книг с количеством раз, сколько каждая из них была взята клиентами
SELECT 
    b.title book_title, 
    b.publishing_year, 
    COUNT(*) taken_customer
FROM books b
JOIN customer_books cb ON cb.id_book = b.id
JOIN customers c ON c.id = cb.id_customer
GROUP BY b.title, b.publishing_year;