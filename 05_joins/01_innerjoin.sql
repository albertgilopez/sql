SELECT * FROM usuarios
INNER JOIN dnis ON usuarios.id_usuario = dnis.id_usuario
ORDER BY usuarios.id_usuario;

SELECT * FROM compañias
INNER JOIN usuarios
ON compañias.id_compañia = usuarios.id_compañia;

SELECT * 
FROM usuarios_lenguajes
INNER JOIN usuarios
ON usuarios_lenguajes.id_usuario = usuarios.id_usuario
INNER JOIN lenguajes
ON usuarios_lenguajes.id_lenguaje = lenguajes.id_lenguaje;


