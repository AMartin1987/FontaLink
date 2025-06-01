CREATE DATABASE IF NOT EXISTS fontaLink
CHARACTER SET utf8mb4
COLLATE utf8mb4_spanish_ci;

USE fontaLink;

-- Tabla USUARIO
CREATE TABLE USUARIO (
    id_usuario INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(100),
    contraseña VARCHAR(100),
    dirección VARCHAR(100),
    teléfono VARCHAR(20)
);

-- Tabla ADMINISTRADOR
CREATE TABLE ADMINISTRADOR (
    id_admin INT PRIMARY KEY,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario)
);

-- Tabla CLIENTE
CREATE TABLE CLIENTE (
    id_cliente INT PRIMARY KEY,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario)
);

-- Tabla FONTANERO
CREATE TABLE FONTANERO (
    id_fontanero INT PRIMARY KEY,
    id_usuario INT,
    estado_disponibilidad ENUM('ocupado', 'libre'),
    FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario)
);

-- Tabla PEDIDO
CREATE TABLE PEDIDO (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);

-- Tabla PRODUCTO
CREATE TABLE PRODUCTO (
    id_producto INT PRIMARY KEY,
    descripción VARCHAR(100),
    precio_unitario DECIMAL(10,2),
    stock INT
);

-- Tabla DETALLE_PEDIDO
CREATE TABLE DETALLE_PEDIDO (
    id_detalle INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT, 
    id_producto INT,
    cantidad INT,
    fecha DATE,
    estado_pedido ENUM('pendiente', 'confirmado', 'enviado', 'entregado', 'cancelado'),
    FOREIGN KEY (id_pedido) REFERENCES PEDIDO(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES PRODUCTO(id_producto)
);

-- Tabla SERVICIOS
CREATE TABLE SERVICIOS (
    id_tarea INT PRIMARY KEY,
    tipo_tarea ENUM('INSTALACIÓN', 'REPARACIÓN'),
    descripción VARCHAR(100),
    precio DECIMAL(10,2),
    estado_servicio ENUM('pendiente', 'asignado', 'en_progreso', 'finalizado', 'cancelado'),
    id_pedido INT,
    id_fontanero INT,
    FOREIGN KEY (id_pedido) REFERENCES PEDIDO(id_pedido),
    FOREIGN KEY (id_fontanero) REFERENCES FONTANERO(id_fontanero)
);
