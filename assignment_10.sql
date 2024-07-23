-----city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.
-----customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.
-----customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.


-----question_1
SELECT city.city, country.country FROM city
LEFT JOIN country on city.country = country.country;

-----question_2
SELECT  customer.first_name, customer.last_name from customer
RIGHT JOIN payment ON payment.payment_id = customer.payment_id;


------question_3
SELECT customer.first_name, customer.last_name from customer
FULL JOIN rental ON rental.rental_id = cutomer.rental_id;
