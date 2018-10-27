use LocalTi

CREATE PROCEDURE PrimerProcedimiento(
@tipoNombre nvarchar (100)
)
as
begin
	SELECT * FROM Empleado WHERE vNombre like '%' + @tipoNombre + '%'
end;

exec PrimerProcedimiento Fabiola;

CREATE PROCEDURE InsertarEmpleado(
@idEmpleado int,
@agregaNombre nvarchar (100),
@vSegundoNombre nvarchar (100),
@vApellido_Paterno nvarchar (100),
@vApellido_Materno nvarchar (100),
@mSueldo money,
@idDomcilio int,
@idPuesto int
)
as
begin
	INSERT INTO Empleado VALUES (@idEmpleado, @agregaNombre, @vSegundoNombre, @vApellido_Paterno, @vApellido_Materno, @mSueldo, @idDomcilio, @idPuesto)
end;

exec InsertarEmpleado 11, Jean, Carlos, Balderas, Martinez, 9999999.999999, 2, 1;

CREATE PROCEDURE AgregarCategoria(
@idCategoria int,
@descripcion varchar(100)
)
as
begin
	INSERT INTO Categoria VALUES (@idCategoria, @descripcion)
end

exec AgregarCategoria 6, 'Una Categoria Adicional';

CREATE PROCEDURE consultarProductoEnExistencia(
@descripcion varchar(100)
)
as
begin
	SELECT * FROM Producto WHERE vDescripcion LIKE '%'+@descripcion+'%';
end;

exec consultarProductoEnExistencia nintendo;

CREATE PROCEDURE ConsultarCalleColonia(
@municipio varchar(100)
)
as
begin

	declare @cp int
	SELECT vCalle, vColonia FROM Domicilio WHERE vMunicipio LIKE '%'+@municipio+'%' OR iCodigoPostal LIKE @cp;
end;

CREATE PROCEDURE ConsultarCalleColonia(
@municipio varchar(100)
)
as
begin

	declare @cp int
	SELECT vCalle, vColonia FROM Domicilio WHERE vMunicipio LIKE '%'+@municipio+'%' OR iCodigoPostal LIKE @cp;
end;

exec ConsultarCalleColonia apodaca;

CREATE FUNCTION GenerarCuadrado(
@ladoX int,
@ladoY int
)returns int
as 
begin
	return @ladoX * @ladoY
end;

select dbo.GenerarCuadrado(12, 1880);