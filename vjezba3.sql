use master;
go
drop database if exists vjezba3;
go
create database vjezba3;
go
use vjezba3;
go

create table IspitniRok (
sifra int NOT NULL,
predmet varchar(50) NOT NULL,
vrstaIspita varchar(50) NOT NULL,
datum datetime,
pristupio datetime NOT NULL,
primary key (sifra)
);


create table Pristupnici (
ispitniRok int NOT NULL,
student varchar(50) NOT NULL,
brojBodova int NOT NULL,
ocjena int NOT NULL,
foreign key (ispitniRok) references IspitniRok
);