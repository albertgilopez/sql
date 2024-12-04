-- LEFT JOIN devuelve TODOS los registros de la tabla izquierda (usuarios)
-- y los registros coincidentes de la tabla derecha (dnis).
-- Si no hay coincidencia en la tabla derecha, se rellenan los campos con NULL.

-- En este ejemplo:
-- 1. Se seleccionan todos los usuarios (tabla izquierda)
-- 2. Se intentan emparejar con sus DNIs (tabla derecha)
-- 3. Si un usuario no tiene DNI, igual aparecerá en el resultado
--    pero sus campos de DNI serán NULL
SELECT * FROM usuarios
LEFT JOIN dnis ON usuarios.id_usuario = dnis.id_usuario;