CREATE INDEX idx_usuarios_nombre ON usuarios (nombre);

CREATE INDEX idx_usuarios_nombre_apellido ON usuarios (nombre, apellido);

CREATE INDEX idx_usuarios_email ON usuarios (email);

DROP INDEX idx_usuarios_nombre ON usuarios;

DROP INDEX idx_usuarios_nombre_apellido ON usuarios;

DROP INDEX idx_usuarios_email ON usuarios;

SELECT * FROM usuarios
WHERE nombre = 'Juan';