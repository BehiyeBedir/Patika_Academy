----film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
----film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
----- customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir?
---- city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.


-----question_1
SELECT rating COUNT(*) AS count_film
FROM film
GROUP BY rating;

-------question_2
SELECT replacement_cost, COUNT(*) AS count_film
FROM film 
GROUP BY replacement_cost
HAVING count_film > 50
ORDER BY count_film DESC;

------question_3
SELECT store_id, COUNT(*) AS count_custom
FROM customer 
GROUP BY store_id ;
  

-----question_4
SELECT country_id, COUNT(*) AS count_city
FROM city
GROUP BY country_id 
ORDER BY count_city DESC
LIMIT 1 ;
