USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED AUTO_INCREMENT,
    album_name VARCHAR(50) DEFAULT 'album Name not found',
    release_date DATE NOT NULL,
    artist VARCHAR(50) DEFAULT 'artist not found',
    total_album_sales FLOAT DEFAULT 0,
    genre VARCHAR(200) DEFAULT 'genre not found',
    PRIMARY KEY (id)
);