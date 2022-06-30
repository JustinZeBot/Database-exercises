USE codeup_test_db;


SELECT album_name,release_date FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;


SELECT album_name,genre FROM albums WHERE genre='disco';
DELETE FROM albums WHERE genre='disco';


SELECT album_name,artist FROM albums WHERE artist='Metallica';
DELETE FROM albums WHERE artist='Metallica';



