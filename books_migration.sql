USE codeup_test_db;

DROP TABLE IF EXISTS books;

CREATE TABLE books (
    id INT UNSIGNED AUTO_INCREMENT,
    title VARCHAR(50),
    author VARCHAR(50) NOT NULL DEFAULT 'Unknown',
    date_published DATE,
    description VARCHAR(250) DEFAULT 'No Description was set',
    bestseller_weeks INT UNSIGNED DEFAULT 0,
    primary key (id)
);