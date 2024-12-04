CREATE PROCEDURE sp_consultar_correos()
BEGIN
    SELECT email FROM usuarios
    WHERE email IS NOT NULL;
END$$

DELIMITER ;

CALL sp_consultar_correos();

DROP PROCEDURE sp_consultar_correos;
