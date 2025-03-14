use edunovawp7;


select * from smjerovi;
--minimalna select naredba
select 1;
--filtriranje kolona (između select i from)
-- * sve kolonaa
--naziv kolone jonstanta izrazt

select *, naziv, 1 as iznos, getdate() as datum from smjerovi;
select naziv as predmet, getdate() as datumpocetak from smjerovi;

select sifra, naziv from smjerovi;

select ime, prezime from polaznici;

-- filtriranje redova
-- ide u where dio
--1 operatori
-- uspoređivanja; =, !=, <, >, <=, >=
select * from smjerovi
where sifra!=2;
select * from smjerovi where sifra >2;
--logički operatori: and, or, not
select * from smjerovi
where sifra =1 or sifra=4;
--primjeri
select * from smjerovi
where sifra >2 and sifra<4;

select * from smjerovi where not(sifra=1 or sifra=4);

-- ostali operatori. like , (% za bilo koji znak)
select * from polaznici polaznici
where prezime='Nađ';
--2
select * from polaznici polaznici
where prezime like'N%';
--3
select * from polaznici polaznici
where prezime like'%a';
--4
select * from polaznici polaznici
where prezime like'%an%';

-- s najmanjom greškom ispišite sve polazice
select * from polaznici where ime like '%a';
-- between
select * from polaznici where sifra>=10 and sifra<=15;
select * from polaznici where sifra between 10 and 15;

-- in	
select * from polaznici where sifra=10 or sifra=15 or sifra=1;
select * from polaznici where sifra in (10,15,1);

-- postaviti da 3 smjera započinju u 
--različitim mjesecima: siječanj, travanj, listopad
use edunovawp7;
select * from smjerovi;
update smjerovi set izvodiseod='2024-01-02 18:30'
where sifra=2;
update smjerovi set izvodiseod='2024-04-02 18:30'
where sifra=3;
update smjerovi set izvodiseod='2024-10-04 18:30'
where sifra=4;

-- izlistaj sve smjerove koji počinju u prvoj polovini 2024
select * from smjerovi 
where izvodiseod between '2024-01-01' and '2024-06-30';

use knjiznica;

--slaganje rezultata
select prezime, ime from autor order by prezime asc, ime desc;
select prezime, ime from autor order by 1 asc, 2 desc;

-- ograničavanje rezultata
select top 10 * from autor;
select top 10 percent * from autor;

select top 10 * from mjesto;

--rezultate select naredbe možemo spremiti u novu tablicu
select top 10 * into nova from mjesto;

select * from nova;
drop table nova;

--unesite sebe kao autora
select top 10* from autor -- order by sifra;
insert into autor (sifra, ime, prezime, datumrodenja) 
values (4, 'David', 'Nađ', '1998-01-08')

-- mladi perica boluje jer ga je ostavila cura
--sto bi mu preporučili da čita iz vaše knjižnice

select count(*) from katalog; -- koliko ima zapisa

select* from katalog
where naslov like '%ljubav%' and
sifra in (2541, 2660, 2664, 2938);


--koliko ima izdavača koji su društvo s ograničenom odgovornošću?

select count(*) from izdavac;
select top 20 * from izdavac;

select * from izdavac
where naziv like '%d.%o%o%' or naziv like '%d%o%o.%';


use svastara;

select count(*) from kupci;

use svastara;

select count(*) from Artikli;
