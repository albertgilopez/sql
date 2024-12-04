-- Alteraciones para la tabla users si ya existe:
ALTER TABLE users
    MODIFY user_id INT AUTO_INCREMENT PRIMARY KEY,
    MODIFY name VARCHAR(255) NOT NULL,
    MODIFY email VARCHAR(255) NOT NULL UNIQUE,
    MODIFY age INT NOT NULL CHECK (age >= 0),
    ADD CONSTRAINT valid_name CHECK (LENGTH(name) >= 2),
    ADD CONSTRAINT valid_email CHECK (email REGEXP '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$');

-- Alteraciones para la tabla productos si ya existe:
ALTER TABLE productos
    MODIFY id INT AUTO_INCREMENT PRIMARY KEY,
    MODIFY nombre VARCHAR(100) NOT NULL,
    MODIFY precio DECIMAL(10, 2) NOT NULL CHECK (precio >= 0),
    MODIFY stock INT NOT NULL CHECK (stock >= 0),
    ADD COLUMN descripcion TEXT,
    ADD COLUMN categoria VARCHAR(50);

