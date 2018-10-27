use LocalTi

SELECT * FROM (
	SELECT (vNombre +' '+vSegundoNombre) AS [Nombre Completo], iIdSexo FROM Cliente
) AS cte WHERE cte.iIdSexo = 2;

SELECT * FROM (
	SELECT vNombre,iIdFechaNacimiento FROM Cliente
) AS [Una tabla mejorada] WHERE [Una tabla mejorada].iIdFechaNacimiento = 2;

SELECT * FROM(
	SELECT vNombre,iIdFechaNacimiento FROM Cliente
) AS [Total] WHERE [Total].iIdFechaNacimiento>2;

WITH NombreLargo AS (
	SELECT (vNombre + ' ' + vApellido_Paterno + ' ' + vApellido_Materno) AS [Nombre Largo] FROM Empleado
) SELECT * FROM NombreLargo WHERE NombreLargo.[Nombre Largo] IS NOT NULL;

CREATE VIEW PruebaAdicional
AS (SELECT vNombre, vDescripcion FROM Sexo LEFT JOIN Cliente ON Sexo.iIdSexo = Cliente.iIdSexo);

SELECT * FROM PruebaAdicional;

CREATE VIEW SueldoTotal AS
(
	SELECT SUM(mSueldo) AS [Total] FROM Empleado
);

SELECT * FROM SueldoTotal;

CREATE VIEW PersonasActuales AS
(
	SELECT Empleado.vApellido_Materno FROM Domicilio FULL OUTER JOIN Empleado ON Empleado.iIdDomicilio = Domicilio.iIdDomicilio
);

SELECT * FROM PersonasActuales;

CREATE VIEW Cumpleaņos AS
(
	SELECT COUNT(iAno) as Cumpleaņos FROM FechaDeNacimiento GROUP BY iMes
);

SELECT * FROM Cumpleaņos;

CREATE VIEW ADINERADOS AS
(
	SELECT TOP 5 * FROM Empleado WHERE mSueldo >= 5000
);

SELECT * FROM ADINERADOS;

DECLARE @query nvarchar (MAX)
SET @query = 'CREATE TABLE AlmacenDeTemporada
	( iIdProd int IDENTITY, vDescripcion varchar(100))'

EXEC (@query)