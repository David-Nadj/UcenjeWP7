select * from smjerovi where sifra=2;

--mjenjanje samo jedne kolone
update smjerovi
set trajanje=300
where sifra=2;

--mjenjanje više kolona
update smjerovi
set trajanje=200, cijena=100,vaucer=0
where sifra=3;

update smjerovi set cijena = 999 where sifra=2;
update smjerovi set cijena = 777.55 where sifra=4;
select * from smjerovi;
update smjerovi set cijena= cijena * 1.1;
select * from smjerovi;

--svim smjerovima smanjite cijenu za 10e

select * from smjerovi;
update smjerovi set cijena= cijena - 10;
select * from smjerovi;

-- smjeru serviser promjenite početak izvođenja na
-- 02. listopad 2024 u 18:30

update smjerovi set izvodiseod='2024-10-02 18:30'
where sifra=3;

--delete naredba

delete smjerovi where sifra=1;
delete grupe where smjer=1;
delete from clanovi where grupa=2;

--dodati sebi omiljenu osobu kao polaznika
-- promjeniti oib omiljenoj osobi naaa 64733268826
--obriši omiljenu osobu

