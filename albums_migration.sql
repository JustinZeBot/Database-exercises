USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED AUTO_INCREMENT,
    album_name VARCHAR(100) DEFAULT 'album Name not found',
    release_date INT DEFAULT 0,
    artist VARCHAR(100) DEFAULT 'artist not found',
    total_album_sales FLOAT DEFAULT 0 ,
    genre VARCHAR(200) DEFAULT 'genre not found',
    PRIMARY KEY (id)
);

