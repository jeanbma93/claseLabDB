use LocalTi

CREATE TRIGGER MiPrimerTrigger ON Cliente
FOR INSERT
AS
BEGIN
	INSERT INTO AlmacenDeTemporada (vDescripcion) VALUES ('Una prueba')
END;

CREATE TRIGGER SegundoTrigger ON Cliente
AFTER DELETE
AS
BEGIN 
	DECLARE @id int
	SELECT @id = iIdCliente FROM inserted

	INSERT INTO AlmacenDeTemporada (vDescripcion) VALUES ('Se ah Borrado un registro')
END;

CREATE TRIGGER TercerTrigger ON Cliente
INSTEAD OF UPDATE
AS
BEGIN
	SELECT 'No se puede modificar en esta tabla!'
END;