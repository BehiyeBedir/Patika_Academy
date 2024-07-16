-------questions:
------film tablosunda bulunan title ve description sütunlarındaki verileri sıralayınız.
------film tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 60 dan büyük VE 75 ten küçük olma koşullarıyla sıralayınız.
------film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 VE replacement_cost 12.99 VEYA 28.99 olma koşullarıyla sıralayınız.
------customer tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir?
------film tablosundaki uzunluğu(length) 50 ten büyük OLMAYIP aynı zamanda rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız.






-----question_1
select title,description from film;

-------question_2
select * from film where length >60 and length < 75 ;

--------question_3
select * from film 
where rental_rate = 0.99 and (replacement_cost = 12.99 or  replacement_cost = 28.99) ;

-------question_4
select last_name from customer
where first_name = 'Mary' ;

--------question_5 
select * from film 
where length <= 50 and rental_rate not in (2.99, 4.99);
