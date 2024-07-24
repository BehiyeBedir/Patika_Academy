----film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
----film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
----film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
----payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.


-----question_1
SELECT COUNT(*) 
FROM film
WHERE length > (SELECT AVG(length) FROM film);

------question_2
SELECT COUNT(*) 
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

-----question_3;
SELECT * FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) AND replacement_cost = (SELECT MIN(replacement_cost) FROM film)
ORDER BY rental_rate, replacement_cost;
------question_4
SELECT customer FROM payment
WHERE amount = (SELECT MAX(amount) FROM payment);
