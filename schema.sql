 DROP TABLE IF EXISTS Usuario;
 DROP TABLE IF EXISTS Restaurante;
 DROP TABLE IF EXISTS Repartidor;
 DROP TABLE IF EXISTS Plato;
 DROP TABLE IF EXISTS Pedido;
 DROP TABLE IF EXISTS Detalles_pedido;
PRAGMA foreign_keys = ON;

CREATE TABLE Usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(150) UNIQUE NOT NULL,
    telefono VARCHAR(20)
);

CREATE TABLE Restaurante (
    id_restaurante INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(200) NOT NULL,
    telefono VARCHAR(20)
);

CREATE TABLE Repartidor (
    id_repartidor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    disponible BOOLEAN DEFAULT TRUE
);

CREATE TABLE Plato (
    id_plato INT AUTO_INCREMENT PRIMARY KEY,
    id_restaurante INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10,2) NOT NULL,
    disponible BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (id_restaurante) REFERENCES Restaurante(id_restaurante)
);

CREATE TABLE Pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_restaurante INT NOT NULL,
    id_repartidor INT,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
    estado VARCHAR(30) DEFAULT 'Pendiente',
    total DECIMAL(10,2) DEFAULT 0.00,
    opciones JSON,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
    FOREIGN KEY (id_restaurante) REFERENCES Restaurante(id_restaurante),
    FOREIGN KEY (id_repartidor) REFERENCES Repartidor(id_repartidor)
);

CREATE TABLE Detalle_Pedido(
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_plato INT NOT NULL,
    cantidad INT NOT NULL DEFAULT 1,
    precio_unitario DECIMAL(10,2) NOT NULL,
    modificaciones JSON,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_plato) REFERENCES Plato(id_plato)
);

CREATE INDEX idx_usuario_correo
ON Usuario(correo);

CREATE INDEX idx_plato_restaurante
ON Plato(id_restaurante);

CREATE INDEX idx_pedido_usuario
ON Pedido(id_usuario);

CREATE INDEX idx_pedido_restaurante
ON Pedido(id_restaurante);

CREATE INDEX idx_pedido_repartidor
ON Pedido(id_repartidor);

CREATE INDEX idx_pedido_fecha
ON Pedido(fecha);

CREATE INDEX idx_detalle_pedido
ON Detalle_Pedido(id_pedido);

CREATE INDEX idx_detalle_plato
ON Detalle_Pedido(id_plato);