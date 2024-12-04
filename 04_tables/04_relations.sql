
-- Crear tabla de órdenes para relacionar usuarios con productos
CREATE TABLE IF NOT EXISTS ordenes (
    orden_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    producto_id INT NOT NULL,
    cantidad INT NOT NULL CHECK (cantidad > 0),
    fecha_orden TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (producto_id) REFERENCES productos(id) ON DELETE CASCADE
);

-- Crear tabla de carritos para usuarios
CREATE TABLE IF NOT EXISTS carritos (
    carrito_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    producto_id INT NOT NULL,
    cantidad INT NOT NULL DEFAULT 1,
    fecha_agregado TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (producto_id) REFERENCES productos(id) ON DELETE CASCADE
);

-- Crear tabla de wishlist (lista de deseos)
CREATE TABLE IF NOT EXISTS wishlists (
    wishlist_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    producto_id INT NOT NULL,
    fecha_agregado TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (producto_id) REFERENCES productos(id) ON DELETE CASCADE
);

-- Insertar algunos datos de ejemplo en las tablas de relaciones
INSERT INTO ordenes (user_id, producto_id, cantidad) VALUES 
(1, 1, 2),
(1, 3, 1),
(2, 2, 1),
(3, 4, 3);

INSERT INTO carritos (user_id, producto_id, cantidad) VALUES 
(4, 5, 1),
(5, 6, 2),
(6, 7, 1);

INSERT INTO wishlists (user_id, producto_id) VALUES 
(7, 8),
(8, 9),
(9, 10);

