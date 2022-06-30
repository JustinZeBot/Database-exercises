USE codeup_test_db;

SELECT artist,album_name FROM albums WHERE artist='Pink Floyd';

SELECT release_date FROM albums WHERE album_name='Sgt. Peppers Lonely Hearts Club Band';

SELECT genre FROM albums WHERE album_name='Nevermind';

SELECT album_name FROM albums WHERE total_album_sales <20;

SELECT * FROM albums WHERE genre='rock';