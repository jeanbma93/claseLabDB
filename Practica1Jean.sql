create database LocalTi

use LocalTi

CREATE TABLE Cliente (
iIdCliente int not null,
vNombre varchar(50),
vApellidoPaterno varchar(20),
vApellidoMaterno varchar(20),
cSexo char(1),
dFechaNacimiento datetime
)

CREATE TABLE Empleado (
iIdEmpleado int not null,
vNombre varchar(50),
vApellidoPaterno varchar(20),
vApellidoMaterno varchar(20),
cSexo char(1),
mSueldo money
)

CREATE TABLE Producto (
iIdProducto int not null,
vDescripcion varchar(50),
vCategoria varchar(50),
fPrecio float(4)
)

CREATE TABLE Categoria (
iIdCategoria int not null,
vDescripcion varchar(50),
)

CREATE TABLE Domicilio(
iId_Domicilio int not null,
vCalle varchar(50),
vColonia varchar(50),
vMunicipio varchar(50),
iCodigoPostal int
)