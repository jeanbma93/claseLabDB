create database RentDeVideos

use RentDeVideos

create table Pelicula
	(iId_Pelicula int,
	vNombre_Pelicula varchar(50),
	iAno_Estreno int,
	mPrecio money,
	tDescripcion text)

create table Cliente
	(iId_Cliente int,
	vNombre_Cliente varchar(50),
	vApellidoP_Cliente varchar(50),
	vApellidoM_Cliente varchar(50),
	dFecha_Nac datetime)

create table Empleado
	(iId_Empleado int,
	vNombre_Empleado varchar(50),
	vApellidoP_Empleado varchar(50),
	vApellidoM_Empleado varchar(50),
	mSueldo money)

create table Domicilio
	(iId_Direccion int,
	vColonia varchar(50),
	vCalle varchar(50),
	vNumero varchar(10),
	vCodigo_Postal varchar(10))

create table Sucursal
	(iId_Sucursal int,
	vSucursal varchar(50),
	vDireccion varchar(50))