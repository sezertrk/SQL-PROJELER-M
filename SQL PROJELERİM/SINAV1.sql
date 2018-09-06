create database italya

use italya

create table bilgi
(id int identity primary key,ad nvarchar(20),soyad nvarchar(20),yas int,
dyer nvarchar(20),adres nvarchar(20))

create table maasb
(id int identity primary key,adres nvarchar(20),maas money,cyil int)

create table ortak
(id int identity primary key,bilgino int,maasno int,
constraint tekil unique (bilgino),constraint tekil2 unique (maasno))

alter table bilgi
add constraint bilgi_ortak foreign key(id)references ortak(bilgino)

alter table maasb
add constraint maasb_ortak foreign key(id)references ortak(maasno)

insert into bilgi (ad,soyad,yas,dyer,adres)values('Gökhan','Kavaktepe',
20,'Erzincan','İstanbul')
insert into bilgi (ad,soyad,yas,dyer,adres)values('Resul','Can',
20,'Kars','İstanbul')
insert into bilgi (ad,soyad,yas,dyer,adres)values('Uğur','Kan',
25,'Erzincan','İstanbul')

insert into maasb (id,adres,maas,cyil)values(1,'İstanbul',1000,4)
insert into maasb (id,adres,maas,cyil)values(2,'İstanbul',2000,3)
insert into maasb (id,adres,maas,cyil)values(3,'İstanbul',3000,5)

insert into ortak (bilgino,maasno)values(3,2)
insert into ortak (bilgino,maasno)values(2,1)
insert into ortak (bilgino,maasno)values(1,3)


select * from bilgi
select * from maasb
select * from ortak