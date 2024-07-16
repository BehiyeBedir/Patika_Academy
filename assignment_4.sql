------film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
------film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
------film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
------country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
------city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?


----question_1
select distinct replacement_cost from film;

---question_2
select count(distinct replacement_cost) from film;

----question_3
select count(*) from film
where title like 'T%'and rating = 'G' ;

----question_4
select count (*) from country where length(country) = 5;

-----question_5
select count (*) from city
ILIKE  '%r' ;
