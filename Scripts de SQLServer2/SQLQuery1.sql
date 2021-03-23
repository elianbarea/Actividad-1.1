create database rrrhhh
GO
use rrrhhh
GO

create table Areas(
	ID bigint primary key,
	Nombre varchar(30) not null,
	Presupuesto money not null check (Presupuesto >0),
	Mail varchar(100) not null unique
)
GO
create table Empleados(
	Legajo int not null primary key identity(100, 1),
	IDarea bigint null foreign key references Areas(ID),
	Apellidos varchar (100) not null,
	Nombres varchar (100) not null,
	Nacimiento date not null,
	Telefono varchar(20) null,
)