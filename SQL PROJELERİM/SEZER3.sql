create database silahtar

use silahtar

create table stokb
(id int identity primary key,malkod int,satiskod int,
tutar money,musno int,constraint tekil unique (malkod))

create table satisb
(id int identity primary key,malkod int,satiskod int,
tutar money,musno int,constraint tekil unique (malkod),
constraint tekil3 unique (satiskod))

create table musteri
(id int identity primary key,ad nvarchar(50),soyad nvarchar(50),
adres ntext)

alter table satisb
add constraint satisb_stokb foreign key(malkod)
references stokb(kod)

alter table musteri
add constraint musteri_satisb foreign key(id)
references satisb(satiskod)

insert into stokb (malad,stok,kod) values ('keleþ',10,1)
insert into stokb (malad,stok,kod) values ('sniper',2,3)
insert into stokb (malad,stok,kod) values ('m4',3,2)

insert into satisb (malkod,satiskod,tutar,musno)values (1,2,3500,2)
insert into satisb (malkod,satiskod,tutar,musno)values (3,1,10000,3)
insert into satisb (malkod,satiskod,tutar,musno)values (2,3,6000,1)

insert into musteri (ad,soyad,adres)values ('Sadettin','Turkut','Çoklu Dere')
insert into musteri (ad,soyad,adres)values ('Sezer','Turkmen','Sancaktepe')
insert into musteri (ad,soyad,adres)values ('Tuðba','Erdem','Patron Vadisi')

select * from satisb
select * from stokb
select * from musteri


