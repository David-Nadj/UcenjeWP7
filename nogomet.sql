use master;
go
drop database if exists nogomet;
go
create database nogomet;
go
use nogomet;
go

create table klub (
sifra int primary key identity(1,1)
naziv varchar(50),
osnovan datetime,
stadion varchar(100),
predsjednik varchar(50),
drzava varchar(50),
liga varchar (100)
);
