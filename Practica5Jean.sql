use LocalTi

SELECT vDescripcion AS [Puesto del empleado] FROM Categoria;
SELECT (vNombre + ' ' + vSegundoNombre) AS [Nombre Completo] FROM Cliente;
SELECT (vNombre + ' Una prueba mas ' + vSegundoNombre + ' ' + vApellido_Paterno) AS [ALGO MUY RANDOM] FROM Cliente WHERE vSegundoNombre IS NOT NULL;
SELECT c.vNombre, p.vDescripcion AS [Compra por Nombre] FROM Cliente AS c, Producto AS p;
SELECT SUM(fPrecio) as [Suma de los Precios de los Productos] FROM Producto;

SELECT Categoria.vDescripcion, Producto.vDescripcion FROM Categoria INNER JOIN Producto ON Categoria.iIdCategoria = Producto.iIdCategoria;
SELECT vNombre, vDescripcion FROM Sexo LEFT JOIN Cliente ON Sexo.iIdSexo = Cliente.iIdSexo;
SELECT Empleado.vNombre, Empleado.vSegundoNombre, (Domicilio.vCalle + ' ' + Domicilio.vColonia) AS [Domicilio Compuesto] FROM Domicilio RIGHT JOIN Empleado ON Empleado.iIdDomicilio=Domicilio.iIdDomicilio;
SELECT Empleado.vApellido_Materno FROM Domicilio FULL OUTER JOIN Empleado ON Empleado.iIdDomicilio = Domicilio.iIdDomicilio;

SELECT vNombre, vSegundoNombre FROM Cliente WHERE vApellido_Paterno = 'Rodriguez' ORDER BY vNombre ASC;
SELECT * FROM Descuento WHERE vDescripcion LIKE 'Descuento%' ORDER BY iCantidad DESC;
SELECT MIN(iAno) AS [Año mas Antiguo] FROM FechaDeNacimiento WHERE iAno < 2000;
SELECT TOP 5 * FROM Empleado WHERE mSueldo >= 5000 ORDER BY mSueldo DESC;

SELECT SUM(mSueldo) AS [Total] FROM Empleado;
SELECT COUNT(iIdFormaDePago) FROM FormaDePago;
SELECT AVG(iCantidad) FROM Descuento GROUP BY vDescripcion ORDER BY vDescripcion DESC;
SELECT COUNT(iAno) FROM FechaDeNacimiento GROUP BY iMes ORDER BY iMes ASC;
SELECT COUNT(fPrecio) FROM Producto GROUP BY iIdCategoria ORDER BY iIdCategoria DESC;

SELECT * INTO Prueba FROM Categoria WHERE iIdCategoria = 1;
INSERT INTO Prueba SELECT * FROM Categoria;