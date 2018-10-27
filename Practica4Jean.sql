use LocalTi

ALTER TABLE Venta
DROP COLUMN dFecha;

ALTER TABLE Venta
ADD dFecha datetime;

--Inserts a Tabla Categoria
INSERT INTO Categoria (iIdCategoria, vDescripcion) VALUES (1, 'Electronico');
INSERT INTO Categoria (iIdCategoria, vDescripcion) VALUES (2, 'Tecnologia');
INSERT INTO Categoria (iIdCategoria, vDescripcion) VALUES (3, 'Ropa');
INSERT INTO Categoria (iIdCategoria, vDescripcion) VALUES (4, 'Dulces');
INSERT INTO Categoria (iIdCategoria, vDescripcion) VALUES (5, 'Promocionales');

--Inserts a Tabla Descuento
INSERT INTO Descuento (iIdDescuento, iCantidad, vDescripcion) VALUES (1, 20, 'Descuento de Verano');
INSERT INTO Descuento (iIdDescuento, iCantidad, vDescripcion) VALUES (2, 10, 'Descuento Alumno Universitario');
INSERT INTO Descuento (iIdDescuento, iCantidad, vDescripcion) VALUES (3, 35, 'Descuento Empleado');
INSERT INTO Descuento (iIdDescuento, iCantidad, vDescripcion) VALUES (4, 40, 'Descuento Socios Distinguidos');
INSERT INTO Descuento (iIdDescuento, iCantidad, vDescripcion) VALUES (5, 15, 'Descuento Julio');

--Inserts a Tabla Producto
INSERT INTO Producto (iIdProducto, vDescripcion, fPrecio, iCantidad, iIdCategoria, iIdDescuento)
VALUES 	(1, 'Monitor', 2500.0, 10, 1, 1);
INSERT INTO Producto (iIdProducto, vDescripcion, fPrecio, iCantidad, iIdCategoria, iIdDescuento)
VALUES 	(2, 'Carcasa', 3500.0, 15, 2, 3);
INSERT INTO Producto (iIdProducto, vDescripcion, fPrecio, iCantidad, iIdCategoria, iIdDescuento)
VALUES 	(3, 'CPU', 5500.99, 7, 2, 4);
INSERT INTO Producto (iIdProducto, vDescripcion, fPrecio, iCantidad, iIdCategoria, iIdDescuento)
VALUES 	(4, 'GPU', 10500.999, 3, 2, 5);
INSERT INTO Producto (iIdProducto, vDescripcion, fPrecio, iCantidad, iIdCategoria, iIdDescuento)
VALUES 	(5, 'Mazapanes', 3.50, 20, 4, 2);
INSERT INTO Producto (iIdProducto, vDescripcion, fPrecio, iCantidad, iIdCategoria, iIdDescuento)
VALUES 	(6, 'Tamarindos', 5, 20, 4, 3);
INSERT INTO Producto (iIdProducto, vDescripcion, fPrecio, iCantidad, iIdCategoria, iIdDescuento)
VALUES 	(7, 'Squinkles', 7.50, 9, 4, 5);
INSERT INTO Producto (iIdProducto, vDescripcion, fPrecio, iCantidad, iIdCategoria, iIdDescuento)
VALUES 	(8, 'Camiseta loco', 199.99, 10, 3, 3);
INSERT INTO Producto (iIdProducto, vDescripcion, fPrecio, iCantidad, iIdCategoria, iIdDescuento)
VALUES 	(9, 'Pantalones Futuristicos', 399.79, 10, 3, 3);
INSERT INTO Producto (iIdProducto, vDescripcion, fPrecio, iCantidad, iIdCategoria, iIdDescuento)
VALUES 	(10, 'Consola Switch', 10999.50, 5, 5, 4);

--Inserts a Tabla Sexo
INSERT INTO Sexo (iIdSexo, vDescripcion) VALUES (1, 'Masculino');
INSERT INTO Sexo (iIdSexo, vDescripcion) VALUES (2, 'Femenino');
INSERT INTO Sexo (iIdSexo, vDescripcion) VALUES (3, 'Desconocido');

--Inserts a Tabla FechaDeNacimiento
INSERT INTO FechaDeNacimiento (iIdFechaNacimiento, iDia, iMes, iAno) VALUES (1, 15, 03, 2016);
INSERT INTO FechaDeNacimiento (iIdFechaNacimiento, iDia, iMes, iAno) VALUES (2, 05, 02, 1939);
INSERT INTO FechaDeNacimiento (iIdFechaNacimiento, iDia, iMes, iAno) VALUES (3, 29, 08, 1998);
INSERT INTO FechaDeNacimiento (iIdFechaNacimiento, iDia, iMes, iAno) VALUES (4, 28, 02, 2014);
INSERT INTO FechaDeNacimiento (iIdFechaNacimiento, iDia, iMes, iAno) VALUES (5, 01, 03, 2000);
INSERT INTO FechaDeNacimiento (iIdFechaNacimiento, iDia, iMes, iAno) VALUES (6, 25, 12, 1993);
INSERT INTO FechaDeNacimiento (iIdFechaNacimiento, iDia, iMes, iAno) VALUES (7, 14, 06, 1971);

--Inserts a Tabla Cliente
INSERT INTO Cliente (iIdCliente, vNombre, vSegundoNombre, vApellido_Paterno, vApellido_Materno, iIdSexo, iIdFechaNacimiento)
VALUES (1, 'Jean', 'Carlos', 'Bal', 'Mar', 1, 1);
INSERT INTO Cliente (iIdCliente, vNombre, vSegundoNombre, vApellido_Paterno, vApellido_Materno, iIdSexo, iIdFechaNacimiento)
VALUES (2, 'Nico', NULL, 'RO', 'Moreno', 1, 2);
INSERT INTO Cliente (iIdCliente, vNombre, vSegundoNombre, vApellido_Paterno, vApellido_Materno, iIdSexo, iIdFechaNacimiento)
VALUES (3, 'Janeth', NULL, 'Pacheco', NULL, 2, 3);
INSERT INTO Cliente (iIdCliente, vNombre, vSegundoNombre, vApellido_Paterno, vApellido_Materno, iIdSexo, iIdFechaNacimiento)
VALUES (4, 'Alan', 'Alberto', 'Romero', NULL, 1, 4);
INSERT INTO Cliente (iIdCliente, vNombre, vSegundoNombre, vApellido_Paterno, vApellido_Materno, iIdSexo, iIdFechaNacimiento)
VALUES (5, 'Monica', 'Esmeralda', 'Rodriguez', NULL, 2, 5);
INSERT INTO Cliente (iIdCliente, vNombre, vSegundoNombre, vApellido_Paterno, vApellido_Materno, iIdSexo, iIdFechaNacimiento)
VALUES (6, 'Katy', NULL, 'Rodriguez', 'Marquez', 2, 6);
INSERT INTO Cliente (iIdCliente, vNombre, vSegundoNombre, vApellido_Paterno, vApellido_Materno, iIdSexo, iIdFechaNacimiento)
VALUES (7, 'Abril', 'Monica', 'Rodriguez', 'Montemayor', 2, 7);
INSERT INTO Cliente (iIdCliente, vNombre, vSegundoNombre, vApellido_Paterno, vApellido_Materno, iIdSexo, iIdFechaNacimiento)
VALUES (8, 'Yosdi', 'Aztrid', 'Casablanca', 'Sepulveda', 2, 7);
INSERT INTO Cliente (iIdCliente, vNombre, vSegundoNombre, vApellido_Paterno, vApellido_Materno, iIdSexo, iIdFechaNacimiento)
VALUES (9, 'Esequiel', NULL, 'Rincon', NULL, 3, 2);
INSERT INTO Cliente (iIdCliente, vNombre, vSegundoNombre, vApellido_Paterno, vApellido_Materno, iIdSexo, iIdFechaNacimiento)
VALUES (10, 'Fabia', 'Carlos', 'Delgado', NULL, 1, 2);

--Inserts a Tabla Puesto
INSERT INTO Puesto (iIdPuesto, vDescripcion) VALUES (1, 'Ingeniero');
INSERT INTO Puesto (iIdPuesto, vDescripcion) VALUES (2, 'Licenciado');
INSERT INTO Puesto (iIdPuesto, vDescripcion) VALUES (3, 'Tecnico');
INSERT INTO Puesto (iIdPuesto, vDescripcion) VALUES (4, 'Obrero');
INSERT INTO Puesto (iIdPuesto, vDescripcion) VALUES (5, 'Ayudante General');

--Inserts a Tabla Domicilio
INSERT INTO Domicilio (iIdDomicilio, vCalle, vColonia, vMunicipio, iCodigoPostal) VALUES (1, 'Cartagena', 'Fresnos', 'Apodaca', 66695);
INSERT INTO Domicilio (iIdDomicilio, vCalle, vColonia, vMunicipio, iCodigoPostal) VALUES (2, 'Oftomolog', 'Anahuac', 'San Nicolas', 66505);
INSERT INTO Domicilio (iIdDomicilio, vCalle, vColonia, vMunicipio, iCodigoPostal) VALUES (3, 'Duraznos', 'Girasoles', 'Escobedo', 66808);
INSERT INTO Domicilio (iIdDomicilio, vCalle, vColonia, vMunicipio, iCodigoPostal) VALUES (4, 'San Tadeo', 'Independencia', 'Monterrey', 66700);
INSERT INTO Domicilio (iIdDomicilio, vCalle, vColonia, vMunicipio, iCodigoPostal) VALUES (5, 'Crisantemos', 'Topo Grande', 'Escobedo', 66809);

--Inserts a Tabla Empleado
INSERT INTO Empleado (iIdEmpleado, vNombre, vSegundoNombre, vApellido_Paterno, vApellido_Materno, mSueldo, iIdDomicilio, iIdPuesto)
VALUES (1, 'Alejandra', 'Alondra', 'Alvarez', 'Duran', 15900, 1, 1);
INSERT INTO Empleado (iIdEmpleado, vNombre, vSegundoNombre, vApellido_Paterno, vApellido_Materno, mSueldo, iIdDomicilio, iIdPuesto)
VALUES (2, 'Alicia', 'Alejandra', 'Aguilar', 'Bonilla', 12900, 2, 2);
INSERT INTO Empleado (iIdEmpleado, vNombre, vSegundoNombre, vApellido_Paterno, vApellido_Materno, mSueldo, iIdDomicilio, iIdPuesto)
VALUES (3, 'Fabian', NULL, 'Alvarez', NULL, 8900, 3, 3);
INSERT INTO Empleado (iIdEmpleado, vNombre, vSegundoNombre, vApellido_Paterno, vApellido_Materno, mSueldo, iIdDomicilio, iIdPuesto)
VALUES (4, 'Gris', NULL, 'Bezares', 'Duran', 3900, 4, 4);
INSERT INTO Empleado (iIdEmpleado, vNombre, vSegundoNombre, vApellido_Paterno, vApellido_Materno, mSueldo, iIdDomicilio, iIdPuesto)
VALUES (5, 'Dulce', 'Debany', 'Olvera', 'Maldonado', 2900, 5, 5);
INSERT INTO Empleado (iIdEmpleado, vNombre, vSegundoNombre, vApellido_Paterno, vApellido_Materno, mSueldo, iIdDomicilio, iIdPuesto)
VALUES (6, 'German', 'Gustavo', 'Fernandez', 'Olvera', 10900, 1, 1);
INSERT INTO Empleado (iIdEmpleado, vNombre, vSegundoNombre, vApellido_Paterno, vApellido_Materno, mSueldo, iIdDomicilio, iIdPuesto)
VALUES (7, 'Nallely', NULL, 'Contreras', 'Alvarez', 8900, 5, 2);
INSERT INTO Empleado (iIdEmpleado, vNombre, vSegundoNombre, vApellido_Paterno, vApellido_Materno, mSueldo, iIdDomicilio, iIdPuesto)
VALUES (8, 'Gerardo', NULL, 'Rincon', NULL, 11000, 1, 3);
INSERT INTO Empleado (iIdEmpleado, vNombre, vSegundoNombre, vApellido_Paterno, vApellido_Materno, mSueldo, iIdDomicilio, iIdPuesto)
VALUES (9, 'Frida', 'Claudia', 'Carrillo', 'Olivares', 3900, 3, 4);
INSERT INTO Empleado (iIdEmpleado, vNombre, vSegundoNombre, vApellido_Paterno, vApellido_Materno, mSueldo, iIdDomicilio, iIdPuesto)
VALUES (10, 'Eduardo', 'EstEban', 'Olvera', 'Olivares', 3900, 4, 4);

--Inserts a Tabla FormaDePago
INSERT INTO FormaDePago (iIdFormaDePago, vDescripcion) VALUES (1, 'Tarjeta de Credito');
INSERT INTO FormaDePago (iIdFormaDePago, vDescripcion) VALUES (2, 'Tarjeta de Debito');
INSERT INTO FormaDePago (iIdFormaDePago, vDescripcion) VALUES (3, 'Tarjeta de CashFast');
INSERT INTO FormaDePago (iIdFormaDePago, vDescripcion) VALUES (4, 'BitCoin');
INSERT INTO FormaDePago (iIdFormaDePago, vDescripcion) VALUES (5, 'Efectivo');
INSERT INTO FormaDePago (iIdFormaDePago, vDescripcion) VALUES (6, 'Tarjeta Prepago');
INSERT INTO FormaDePago (iIdFormaDePago, vDescripcion) VALUES (7, 'Monedero LocalTi');
INSERT INTO FormaDePago (iIdFormaDePago, vDescripcion) VALUES (8, 'Otro');

--Inserts a Tabla Venta
INSERT INTO Venta (iIdVenta, iIdCliente, iIdFormaDePago, iIdProducto, dFecha) VALUES (1, 1, 1, 1, current_timestamp);
INSERT INTO Venta (iIdVenta, iIdCliente, iIdFormaDePago, iIdProducto, dFecha) VALUES (2, 2, 2, 2, current_timestamp);
INSERT INTO Venta (iIdVenta, iIdCliente, iIdFormaDePago, iIdProducto, dFecha) VALUES (3, 3, 3, 3, current_timestamp);
INSERT INTO Venta (iIdVenta, iIdCliente, iIdFormaDePago, iIdProducto, dFecha) VALUES (4, 4, 4, 4, current_timestamp);
INSERT INTO Venta (iIdVenta, iIdCliente, iIdFormaDePago, iIdProducto, dFecha) VALUES (5, 5, 5, 5, current_timestamp);
INSERT INTO Venta (iIdVenta, iIdCliente, iIdFormaDePago, iIdProducto, dFecha) VALUES (6, 6, 6, 9, current_timestamp);
INSERT INTO Venta (iIdVenta, iIdCliente, iIdFormaDePago, iIdProducto, dFecha) VALUES (7, 10, 8, 3, current_timestamp);

--Update a Tabla Producto
UPDATE Producto SET vDescripcion = 'Consola Xbox one X', fPrecio = 11999, iCantidad = 20, iIdCategoria = 1, iIdDescuento = 2 WHERE iIdProducto = 1;
UPDATE Producto SET vDescripcion = 'Consola PlayStation 4 Pro', fPrecio = 10999, iCantidad = 10, iIdCategoria = 1, iIdDescuento = 2 WHERE iIdProducto = 2;
UPDATE Producto SET vDescripcion = 'Nintendo 3DS', fPrecio = 6900, iCantidad = 15, iIdCategoria = 1, iIdDescuento = 3 WHERE iIdProducto = 3;
UPDATE Producto SET vDescripcion = 'Mini classic NES', fPrecio = 4999, iCantidad = 10, iIdCategoria = 1, iIdDescuento = 4 WHERE iIdProducto = 4;
UPDATE Producto SET vDescripcion = 'Consola Classic Nintendo 64', fPrecio = 4999, iCantidad = 15, iIdCategoria = 1, iIdDescuento = 1 WHERE iIdProducto = 5;

--Update a Tabla Cliente
UPDATE Cliente SET vNombre = 'Juan', vSegundoNombre = 'Ca', vApellido_Paterno = 'Balderas', vApellido_Materno = 'Martinez', iIdSexo = 1, iIdFechaNacimiento = 3 WHERE iIdCliente = 1;
UPDATE Cliente SET vNombre = 'Nicolas', vSegundoNombre = NULL, vApellido_Paterno = 'Rodriguez', vApellido_Materno = 'Hernandez', iIdSexo = 3, iIdFechaNacimiento = 4 WHERE iIdCliente = 2;
UPDATE Cliente SET vNombre = 'Janeth', vSegundoNombre = 'Alejandra', vApellido_Paterno = 'Pacheco', vApellido_Materno = 'Cazares' WHERE iIdCliente = 3;
UPDATE Cliente SET vNombre = 'Angel', vApellido_Paterno = 'Balderas', vApellido_Materno = 'Martinez', iIdSexo = 1, iIdFechaNacimiento = 2 WHERE iIdCliente = 4;
UPDATE Cliente SET vNombre = 'Luis', vSegundoNombre = NULL, vApellido_Paterno = 'Rodriguez', vApellido_Materno = NULL, iIdSexo = 3, iIdFechaNacimiento = 7 WHERE iIdCliente = 5;

--Update a Tabla Empleado
UPDATE Empleado SET vNombre = 'Janeth', vSegundoNombre = 'Alejandra', vApellido_Paterno = 'Pacheco', vApellido_Materno = 'Cazares', mSueldo = 29999, iIdDomicilio = 1, iIdPuesto = 2 WHERE iIdEmpleado = 1;
UPDATE Empleado SET vNombre = 'Romeo', vSegundoNombre = NULL, vApellido_Paterno = 'Sanchez', vApellido_Materno = NULL, mSueldo = 59000, iIdDomicilio = NULL, iIdPuesto = 1 WHERE iIdEmpleado = 2;
UPDATE Empleado SET vNombre = 'Fabiola', vSegundoNombre = 'Lizi', vApellido_Paterno = 'Juarez', vApellido_Materno = 'Baldemar', mSueldo = 3999, iIdDomicilio = 2, iIdPuesto = 4 WHERE iIdEmpleado = 3;
UPDATE Empleado SET vNombre = 'Frido', vSegundoNombre = 'Claudio', vApellido_Paterno = 'Carrilla', vApellido_Materno = 'Olivaro', mSueldo = 2950, iIdDomicilio = NULL WHERE iIdEmpleado = 9;
UPDATE Empleado SET vNombre = 'Eduardita', vSegundoNombre = 'Estefania', vApellido_Paterno = 'Olvero', vApellido_Materno = 'Olibug', mSueldo = 59999, iIdDomicilio = 3, iIdPuesto = 1 WHERE iIdEmpleado = 10;

--Delete a Tabla Venta
DELETE FROM Venta WHERE iIdVenta = 1;
DELETE FROM Venta WHERE iIdVenta = 2;
DELETE FROM Venta WHERE iIdVenta = 3;
DELETE FROM Venta WHERE iIdVenta = 6;
DELETE FROM Venta WHERE iIdVenta = 7;

--Delete a Tabla Producto
DELETE FROM Producto WHERE iIdProducto = 1;
DELETE FROM Producto WHERE iIdProducto = 2;
DELETE FROM Producto WHERE iIdProducto = 3;
DELETE FROM Producto WHERE iIdProducto = 6;
DELETE FROM Producto WHERE iIdProducto = 7;

--Delete a Tabla Cliente
DELETE FROM Cliente WHERE iIdCliente = 1;
DELETE FROM Cliente WHERE iIdCliente = 2;
DELETE FROM Cliente WHERE iIdCliente = 3;
DELETE FROM Cliente WHERE iIdCliente = 4;
DELETE FROM Cliente WHERE iIdCliente = 5;