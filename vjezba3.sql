use master;
go
drop database if exists vjezba3;
go
create database vjezba3;
go
use vjezba3;
go

create table IspitniRok (
sifra int not null primary key identity(1,1),
predmet varchar(50) not null,
vrstaIspita varchar(50) not null,
datum datetime,
pristupio datetime not null,
);


create table Pristupnici (
ispitniRok int not null references IspitniRok(sifra),
student varchar(50) not null,
brojBodova int not null,
ocjena int not null,
);