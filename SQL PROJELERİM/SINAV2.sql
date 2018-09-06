create database fransa

use fransa

create table kisi
(id int identity primary key,ad nvarchar(20),soyad nvarchar(20),yas int,
dyer nvarchar(20),adres nvarchar(20))

create table vergi
(id int identity primary key,ad nvarchar(20),tutar money,derece int)

create table ortak
(id int identity primary key,kisino int,vergino int,
constraint tekil unique (kisino),constraint tekil2 unique (vergino))

alter table kisi
add constraint kisi_ortak foreign key(id)references ortak(kisino)

alter table vergi
add constraint vergi_ortak foreign key(id)references ortak(vergino)

insert into kisi(ad,soyad,yas,dyer,adres)values('Gökhan','Tepe',20,
'Van','İstanbul')
insert into kisi(ad,soyad,yas,dyer,adres)values('Sema','Türk',20,
'Muş','İstanbul')
insert into kisi(ad,soyad,yas,dyer,adres)values('Tuana','Gül',25,
'Van','İstanbul')

insert into vergi(ad,tutar,derece)values('Çöp',1000,4)
insert into vergi(ad,tutar,derece)values('Gelir',2000,3)
insert into vergi(ad,tutar,derece)values('Kira',3000,5)

insert into ortak(id)values(1)
insert into ortak(id)values(2)
insert into ortak(id)values(3)

select maasb recordset



select * from bilgi
select * from maasb
select * from ortak