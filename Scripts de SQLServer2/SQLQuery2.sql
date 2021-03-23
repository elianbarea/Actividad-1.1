create database Carrera
GO
use Carrera
GO

Create table Carreras(
	ID varchar (4) not null PRIMARY KEY,
	Nombre varchar(30) not null,
	Fecha_creacion date not null check(Fecha_creacion <= getdate()),
	Mail varchar(40) not null,
	Nivel varchar (10) not null check (Nivel= 'Diplomatura'or Nivel= 'Pregrado' or Nivel='Grado' or Nivel='Posgrado')
)
GO

Create table Materias(
	ID bigint primary key identity (100,1),
	IDcarrera varchar(4) not null foreign key references Carreras(ID),
	Nombre varchar(30) not null,
	Carga_horaria int not null check (Carga_horaria > 0),
)
GO

Create table Alumnos(
	Legajo varchar(4) not null foreign key references Carreras(ID),
	Apellidos varchar(40) null,
	Nombres varchar(40) null,
	FechaNacimiento date not null check(FechaNacimiento <= getdate()),
	Mail varchar(40) not null unique,
	Telefono varchar(20) null ,
)