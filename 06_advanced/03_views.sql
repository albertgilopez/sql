CREATE VIEW usuarios_activos AS
SELECT * FROM usuarios
WHERE activo = 1;

DROP VIEW usuarios_activos;