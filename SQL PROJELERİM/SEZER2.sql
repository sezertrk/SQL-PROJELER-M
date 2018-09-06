create database sezer2

use sezer2

create table kisi
(id int identity primary key,ad nvarchar(20),soyad nvarchar(20))


create table satis
(id int identity primary key,tutar money,kno int,sno int,
constraint tekil unique(sno),constraint tekil2 unique(kno))


create table mbilgi
(id int identity primary key,kod int,ad nvarchar(20),
constraint tekil3 unique(kod))


alter table mbilgi
add constraint mbilgi_satis foreign key(kod)references satis(sno)

alter table satis
add constraint satis_kisi foreign key(kno)references kisi(id)

insert into kisi(ad,soyad)values ('Ahmet','Can')
insert into kisi(ad,soyad)values ('Sezer','Türkmen')
insert into kisi(ad,soyad)values ('Sevim','Bahar')
insert into kisi(ad,soyad)values ('Rukiye','Cindoruk')

insert into satis(tutar,kno,sno)values (500,1,7)
insert into satis(tutar,kno,sno)values (100,4,6)
insert into satis(tutar,kno,sno)values (750,3,5)
insert into satis(tutar,kno,sno)values (600,2,1)

insert into mbilgi(kod,ad)values (5,'Sandalye')
insert into mbilgi(kod,ad)values (7,'Koltuk')
insert into mbilgi(kod,ad)values (6,'Yatak')
insert into mbilgi(kod,ad)values (1,'Koltuk')

select * from satis
select * from mbilgi
select * from kisi

