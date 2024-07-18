-----film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.
-----film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sıralayınız.
-----customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.

----question_1
SELECT title FROM film
WHERE title LIKE '%n'
ORDER BY length DESC 5;


-----question_2
SELECT title FROM film
WHERE tite LIKE '%n'
ORDER BY length
LIMIT 5
OF SET 5;

-----question_3
SELECT last_name FROM customer 
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;
