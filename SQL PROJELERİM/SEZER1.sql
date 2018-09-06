create database sezer

use sezer

create table turk
(id int identity primary key,ad nvarchar(20),soyad nvarchar(20),
yas int,il nvarchar(20),ilce nvarchar (20))

insert into turk (ad,soyad,yas,il,ilce)
values ('Sezer','Turkmen',22,'Ýstanbul','Baðcýlar')

insert into turk (ad,soyad,yas,il,ilce)
values ('Cansu','Turkmen',18,'Ýstanbul','Baðcýlar')
insert into turk (ad,soyad,yas,il,ilce)
values('Mert Samet','Turkmen',12,'Ýstanbul','Baðcýlar')

insert into turk (ad,soyad,yas,il,ilce)
values('Zehra','Turkmen',37,'Ýstabul','Baðcýlar')

select * from turk where yas=12

insert into turk (ad,soyad,yas,il,ilce)
values('Cemil','Ýpekçi',48,'Ýstanbul','Etiler')