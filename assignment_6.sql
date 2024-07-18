----film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
----film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
----film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
-----film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?

----question_1
SELECT AVG(rental_rate) AS average_rental_rate
FROM film;

----question_2
SELECT COUNT(*) AS count_c_starting_films
FROM film
WHERE title LIKE 'C%';

----question_3
SELECT MAX(length) AS longest_length_for_099_rental_rate
FROM film
WHERE rental_rate = 0.99;

-----quesiton_4 
SELECT COUNT(DISTINCT replacement_cost) AS distinct_replacement_costs
FROM film
WHERE length > 150;
