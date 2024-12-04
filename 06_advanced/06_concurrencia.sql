-- La concurrencia en bases de datos se refiere a la capacidad del sistema para manejar
-- múltiples transacciones simultáneas de forma segura y eficiente.

-- Problemas comunes de concurrencia:

-- 1. Perdida de actualización (Lost Update)
-- Cuando dos transacciones intentan actualizar el mismo dato al mismo tiempo

-- 2. Lecturas sucias (Dirty Reads) 
-- Cuando una transacción lee datos que aún no han sido confirmados por otra transacción

-- 3. Lecturas no repetibles (Non-repeatable Reads)
-- Cuando una transacción lee el mismo dato dos veces y obtiene valores diferentes

-- 4. Lecturas fantasma (Phantom Reads)
-- Cuando una transacción lee un conjunto de filas que cumplen una condición y
-- otra transacción inserta nuevas filas que también cumplen esa condición

-- Soluciones:
-- - Uso de TRANSACTION
-- - Niveles de aislamiento (ISOLATION LEVELS)
-- - Bloqueos (LOCKS)
-- - Control de concurrencia multiversión (MVCC)