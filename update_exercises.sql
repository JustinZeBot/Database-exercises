USE codeup_test_db;

SELECT total_album_sales FROM albums;

UPDATE albums
SET total_album_sales = (total_album_sales * 10);


SELECT album_name,release_date FROM albums WHERE release_date <1980;

UPDATE albums
SET release_date = 1800
WHERE release_date <1980;


SELECT album_name,artist FROM albums WHERE artist='Michael Jackson';

UPDATE albums
SET artist='Peter Jackson'
WHERE artist='Michael Jackson';
SELECT album_name,artist FROM albums WHERE artist='Peter Jackson';
