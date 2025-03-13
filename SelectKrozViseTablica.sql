use edunovawp7
select b.naziv as grupa, a.naziv as smjer, b.predavac
from smjerovi a inner join grupe b
on a.sifra = b.smjer;
select * from grupe 


select a.naziv, b.naziv as grupa, b.predavac
from smjerovi a inner join grupe b
on a.sifra = b.smjer;

select a.naziv, b.naziv as grupa, b.predavac
from smjerovi a left join grupe b
on a.sifra = b.smjer;

select b.naziv as grupa,
a.naziv as smjer,
d.ime, d.prezime
from smjerovi a 
inner join grupe b on a.sifra=b.smjer
inner join clanovi c on b.sifra = c.grupa
inner join polaznici d on d.sifra = c.polaznik;


select b.naziv as grupa,
a.naziv as smjer,
d.ime, d.prezime
from smjerovi a 
left join grupe b on a.sifra=b.smjer
left join clanovi c on b.sifra = c.grupa
left join polaznici d on d.sifra = c.polaznik;



update grupe set predavac= 'Marija Perić' where sifra=1;
update grupe set predavac= 'Pero Perić' where sifra=2;
update grupe set predavac= 'Karlo let ' where sifra=3;
update grupe set predavac= 'Karla let' where sifra=4;

select* from smjerovi;

use knjiznica;

--izlistaj ime i prezime autora, naslov idavača i mjesto izdavanja

select concat( a.ime, ' ', a.prezime) as autor,
b.naslov, c.naziv as izdavac,
d.naziv as mjesto
from autor a
inner join katalog b on a.sifra = b.autor
inner join izdavac c on c.sifra = b.izdavac
inner join mjesto d on d.sifra = b.mjesto
where a.ime like 'I%'
order by a.prezime;

--isti rezultati kao
select autor.ime, autor.prezime,
katalog.naslov, izdavac.naziv as izdavac,
mjesto.naziv as mjesto
from autor 
inner join katalog on autor.sifra = katalog.autor
inner join izdavac on izdavac.sifra = katalog.izdavac
inner join mjesto on mjesto.sifra = katalog.mjesto;


use svastara;

select top 10 c.redniBroj, a.dugiNaziv, b.cijena, b.kolicina
from Artikli a
inner join ArtikliNaPrimci b on a.sifra = b.artikl
inner join Primke c on c.sifra=b.primka

--
select  a.dugiNaziv, b.cijena, b.kolicina,
b.cijena * b.kolicina as vrijednost
from Artikli a
inner join ArtikliNaPrimci b on a.sifra = b.artikl
inner join Primke c on c.sifra=b.primka
where c.redniBroj='1/2008';
select * from Primke
where primke.redniBroj='1/2008';


select  sum(b.cijena * b.kolicina) as vrijednost
from Artikli a
inner join ArtikliNaPrimci b on a.sifra = b.artikl
inner join Primke c on c.sifra=b.primka
where c.redniBroj='1/2008';


select c.redniBroj, 
d.naziv,
sum(b.cijena * b.kolicina) as vrijednost
from Artikli a
inner join ArtikliNaPrimci b on a.sifra = b.artikl
inner join Primke c on c.sifra=b.primka
inner join Dobavljaci d on c.dobavljac=d.sifra
group by c.redniBroj, d.naziv
having sum(b.cijena * b.kolicina)>13000000
order by 2 asc;

-- podupiti
select count(*) from Artikli; -- 52601
select distinct artikl from ArtikliNaPrimci; -- 52599

select * from artikli where sifra not in(
select distinct artikl from ArtikliNaPrimci
);