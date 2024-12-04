-- RIGHT JOIN devuelve TODOS los registros de la tabla derecha (dnis)
-- y los registros coincidentes de la tabla izquierda (usuarios).
-- Si no hay coincidencia en la tabla izquierda, se rellenan los campos con NULL.

-- En este ejemplo:
-- 1. Se seleccionan todos los DNIs (tabla derecha)
-- 2. Se intentan emparejar con sus usuarios (tabla izquierda)
-- 3. Si un DNI no tiene usuario asociado, igual aparecerá en el resultado
--    pero sus campos de usuario serán NULL
SELECT * FROM usuarios
RIGHT JOIN dnis ON usuarios.id_usuario = dnis.id_usuario;
