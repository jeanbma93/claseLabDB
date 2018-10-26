use LocalTi


CREATE TABLE Sexo (
iIdSexo int not null PRIMARY KEY,
vDescripcion varchar (50)
)

CREATE TABLE FechaDeNacimiento (
iIdFechaNacimiento int not null PRIMARY KEY,
iDia int not null,
iMes int not null,
iAno int not null
)

CREATE TABLE Cliente (
iIdCliente int not null PRIMARY KEY,
vNombre varchar(50) not null,
vSegundoNombre varchar (50),
vApellido_Paterno varchar(20) not null,
vApellido_Materno varchar(20),
iIdSexo int FOREIGN KEY REFERENCES Sexo(iIdSexo),
iIdFechaNacimiento int FOREIGN KEY REFERENCES FechaDeNacimiento(iIdFechaNacimiento),
)

CREATE TABLE Puesto (
iIdPuesto int not null PRIMARY KEY,
vDescripcion varchar (50)
)

CREATE TABLE Domicilio(
iIdDomicilio int not null PRIMARY KEY,
vCalle varchar(50),
vColonia varchar(50),
vMunicipio varchar(50),
iCodigoPostal int
)

CREATE TABLE Empleado (
iIdEmpleado int not null PRIMARY KEY,
vNombre varchar(50) not null,
vSegundoNombre varchar (50),
vApellido_Paterno varchar(20) not null,
vApellido_Materno varchar(20),
mSueldo money,
iIdDomicilio int FOREIGN KEY REFERENCES Domicilio(iIdDomicilio),
iIdPuesto int FOREIGN KEY REFERENCES Puesto(iIdPuesto)
)

CREATE TABLE Categoria (
iIdCategoria int not null PRIMARY KEY,
vDescripcion varchar(50),
)

CREATE TABLE Descuento (
iIdDescuento int not null PRIMARY KEY,
iCantidad int,
vDescripcion varchar(50)
)

CREATE TABLE Producto (
iIdProducto int not null PRIMARY KEY,
vDescripcion varchar(50),
fPrecio float(24),
iCantidad int,
iIdCategoria int FOREIGN KEY REFERENCES Categoria(iIdCategoria),
iIdDescuento int FOREIGN KEY REFERENCES Descuento(iIdDescuento)
)

CREATE TABLE FormaDePago (
iIdFormaDePago int not null PRIMARY KEY,
vDescripcion varchar(50)
)

CREATE TABLE Venta (
iIdVenta int not null PRIMARY KEY,
iIdCliente int FOREIGN KEY REFERENCES Cliente(iIdCliente),
iIdFormaDePago int FOREIGN KEY REFERENCES FormaDePago(iIdFormaDePago),
iIdProducto int FOREIGN KEY REFERENCES Producto(iIdProducto),
dFecha timestamp
)