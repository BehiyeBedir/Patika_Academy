-----test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
-----Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
------Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
------Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.


------question_1
CREATE TABLE employee 
  (id INTEGER ,
  name VARCHAR(50) ,
  birthday DATE,
  email VARCHAR(100));

-----question_2
insert into employee (id, name, birthday, email) values (1, 'Keary Macconaghy', '1909-08-02', 'kmacconaghy0@msn.com');
insert into employee (id, name, birthday, email) values (2, 'Gran Conyers', '1950-12-30', 'gconyers1@geocities.com');
insert into employee (id, name, birthday, email) values (3, 'Nance Blesdill', '1952-05-05', 'nblesdill2@disqus.com');
insert into employee (id, name, birthday, email) values (4, 'Arther Tallquist', '1973-06-29', 'atallquist3@un.org');
insert into employee (id, name, birthday, email) values (5, 'Bessy Ferris', '1930-08-27', 'bferris4@youku.com');

------question_3
UPDATE employee SET name = 'Keary M.' WHERE id = 1;
UPDATE employee SET birthday = '1910-08-02' WHERE name = 'Keary Macconaghy';
UPDATE employee SET email = 'newemail@domain.com' WHERE birthday = '1950-12-30';
UPDATE employee SET email = 'newemail@domain.com' WHERE birthday = '1950-12-30';
UPDATE employee SET birthday = '1980-01-01', email = 'updatedemail@domain.com' WHERE id = 4;


---question_4
DELETE FROM employee WHERE id = 1; 
DELETE FROM employee WHERE name = 'Gran Conyers';
DELETE FROM employee WHERE birthday = '1952-05-05';
DELETE FROM employee WHERE email = 'atallquist3@un.org';
DELETE FROM employee WHERE id = 5 AND name = 'Bessy Ferris';
