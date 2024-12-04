-- Las constraints (restricciones) son reglas que se aplican a las columnas de una tabla
-- para mantener la integridad de los datos. Aquí algunos ejemplos:

CREATE TABLE users (
    -- PRIMARY KEY: Identifica de manera única cada registro
    -- AUTO_INCREMENT: Incrementa automáticamente el valor
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    
    -- NOT NULL: El campo no puede estar vacío
    name VARCHAR(255) NOT NULL,
    
    -- NOT NULL: Email obligatorio
    -- UNIQUE podría agregarse para evitar duplicados
    email VARCHAR(255) NOT NULL,
    
    -- NOT NULL con CHECK: Asegura valor no nulo y podría
    -- agregarse CHECK (age >= 0) para validar edad
    age INT NOT NULL
);

CREATE TABLE productos (
    -- Similar a users, clave primaria auto-incrementable
    id INT AUTO_INCREMENT PRIMARY KEY,
    
    -- Sin constraints, permite NULL
    nombre VARCHAR(100),
    
    -- DECIMAL(10,2): 10 dígitos totales, 2 decimales
    -- Podría agregarse CHECK (precio >= 0)
    precio DECIMAL(10, 2),
    
    -- Sin constraints, permite NULL
    -- Podría agregarse CHECK (stock >= 0)
    stock INT
);


-- Otros tipos de constraints que podrían usarse:
-- FOREIGN KEY: Para relacionar tablas
-- DEFAULT: Para valores predeterminados
-- UNIQUE: Para valores únicos
-- CHECK: Para validar condiciones

-- Inserts para la tabla users
INSERT INTO users (name, email, age) VALUES ('Juan Pérez', 'juan@email.com', 25);
INSERT INTO users (name, email, age) VALUES ('María García', 'maria@email.com', 30);
INSERT INTO users (name, email, age) VALUES ('Roberto Martínez', 'roberto@email.com', 45);
INSERT INTO users (name, email, age) VALUES ('Ana Rodríguez', 'ana@email.com', 28);
INSERT INTO users (name, email, age) VALUES ('Carlos Sánchez', 'carlos@email.com', 35);
INSERT INTO users (name, email, age) VALUES ('Elena López', 'elena@email.com', 22);
INSERT INTO users (name, email, age) VALUES ('Diego Fernández', 'diego@email.com', 41);
INSERT INTO users (name, email, age) VALUES ('Sofía Torres', 'sofia@email.com', 33);
INSERT INTO users (name, email, age) VALUES ('Miguel Ramírez', 'miguel@email.com', 29);
INSERT INTO users (name, email, age) VALUES ('Carmen Morales', 'carmen@email.com', 27);

-- Inserts para la tabla productos
INSERT INTO productos (nombre, precio, stock) VALUES ('Portátil', 999.99, 50);
INSERT INTO productos (nombre, precio, stock) VALUES ('Teléfono móvil', 599.99, 100);
INSERT INTO productos (nombre, precio, stock) VALUES ('Auriculares', 79.99, 200);
INSERT INTO productos (nombre, precio, stock) VALUES ('Monitor', 299.99, 30);
INSERT INTO productos (nombre, precio, stock) VALUES ('Teclado', 49.99, 150);
INSERT INTO productos (nombre, precio, stock) VALUES ('Ratón', 29.99, 180);
INSERT INTO productos (nombre, precio, stock) VALUES ('Impresora', 199.99, 25);
INSERT INTO productos (nombre, precio, stock) VALUES ('Tableta', 399.99, 75);
INSERT INTO productos (nombre, precio, stock) VALUES ('Altavoz', 89.99, 120);
INSERT INTO productos (nombre, precio, stock) VALUES ('Cámara web', 69.99, 90);
