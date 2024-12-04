SELECT usuarios.id_usuario AS u_user_id, dnis.id_usuario AS d_user_id
FROM usuarios
LEFT JOIN dnis
ON usuarios.id_usuario = dnis.id_usuario
UNION ALL
SELECT usuarios.id_usuario, dnis.id_usuario AS d_user_id
FROM usuarios
RIGHT JOIN dnis
ON usuarios.id_usuario = dnis.id_usuario;
