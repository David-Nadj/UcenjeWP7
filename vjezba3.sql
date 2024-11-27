use master;
go
drop database if exists vjezba3;
go
create database vjezba3;
go
use vjezba3;
go

create table IspitniRok (
sifra int,
predmet varchar(50),
vrstaIspita varchar(50),
datum varchar(50),
pristupio
);


create table Pristupnici (
ispitniRok int,
student varchar(50)
brojBodova varchar(100)
ocjena varchar(60)
);