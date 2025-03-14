use master;
go
drop database if exists nogomet;
go
create database nogomet;
go
use nogomet;
go

create table klub (
sifra int primary key identity(1,1),
naziv varchar(50) not null,
osnovan datetime not null,
stadion varchar(100) not null,
predsjednik varchar(50) not null,
drzava varchar(50) not null,
liga int not null
);

create table utakmica (
sifra int not null primary key identity(1,1),
datum datetime not null,
vrijeme datetime not null,
lokacija varchar(100) not null,
stadion varchar(100) not null,
domaci_klub int not null references klub(sifra),
gostujuci_klub int not null references klub(sifra),
);

create table igrac(
sifra int not null,
ime varchar(50) not null,
prezime varchar(50) not null,
datum_rođenja datetime not null,
pozicija varchar(50) not null,
broj_dresa int not null,
klub int not null references klub(sifra),
);

create table trener (
sifra int not null references klub(sifra),
ime varchar(50) not null,
prezime varchar(50) not null,
klub varchar(100) not null ,
nacionalnost varchar(100) not null,
iskustvo varchar(100) not null,
);
