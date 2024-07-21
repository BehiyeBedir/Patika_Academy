-----city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
----customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
-----customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.


----questşon_1
SELECT country,city  FROM city
INNER JOIN country ON country.country_id = city.country_id

-----question_2
SELECT first_name , last_name from customer
INNER JOIN payment ON cutomer.payment_id = payment.customer_id;

---question_3
SELECT first_name , last_name from customer 
INNER JOIN rental ON customer.rental_id = rental.rental_id;



