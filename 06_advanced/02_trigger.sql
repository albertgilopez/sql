DELIMITER $$

CREATE TRIGGER tg_email
AFTER UPDATE ON usuarios
FOR EACH ROW
BEGIN
    -- Verifica que el email cambió y maneja valores nulos
	IF (OLD.email IS NOT NULL AND NEW.email IS NOT NULL AND OLD.email <> NEW.email)
	    OR (OLD.email IS NULL AND NEW.email IS NOT NULL)
	    OR (OLD.email IS NOT NULL AND NEW.email IS NULL) THEN
		INSERT INTO email_history (id_usuario, email)
        VALUES (OLD.id_usuario, OLD.email);
	END IF;
END$$

DELIMITER ;

UPDATE usuarios SET email = 'juan@gmail.com' WHERE id_usuario = 1;

DROP TRIGGER tg_email;