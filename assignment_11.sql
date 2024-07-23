-----actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
-----actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
-----actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
----İlk 3 sorguyu tekrar eden veriler için de yapalım.

----question_1
SELECT first_name FROM actor 
UNION 
SELECT first_name FROM customer
ORDER BY first_name;
---Tekrar eden veriler için
SELECT first_name FROM actor 
UNION ALL
SELECT first_name FROM customer
ORDER BY first_name;

-----question_2
SELECT first_name FROM actor
INTERSECT 
SELECT first_name FROM customer
ORDER BY first_name;
----Tekrar eden veriler için; zaten kesişim alındığı için sonuç değişmeyecektir. 

-----question_3
SELECT fisrt_name FROM actor
EXCEPT
SELECT first_name FROM customer
ORDER BY first_name;
