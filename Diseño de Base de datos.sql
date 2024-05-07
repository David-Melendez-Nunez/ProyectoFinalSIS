
CREATE TABLE usuarios (
    usuario_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    usuario_nombre VARCHAR(25) DEFAULT NULL,
    email VARCHAR(255) DEFAULT NULL,
    contrasenia VARBINARY(255) DEFAULT NULL,
    telefono VARCHAR(100) DEFAULT NULL
) Engine=InnoDB;

-- FK --
SELECT usuario_id, usuario_nombre, email, compra_id FROM compras JOIN usuarios ON (usuario_id=usuario_id_compra) WHERE usuario_id=1

ALTER TABLE compras
ADD CONSTRAINT fk_usuario_id_compra
FOREIGN KEY (usuario_id_compra) 
REFERENCES usuarios(usuario_id);

-------------------------

CREATE TABLE compras (
    compra_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    cantidad_producto INT(11) DEFAULT NULL,
    precio_unidad INT(11) DEFAULT NULL,
    usuario_id_compra INT(11) DEFAULT NULL
) Engine=InnoDB;


-- FK --

ALTER TABLE ofertas
ADD CONSTRAINT fk_producto_id_ofertas
FOREIGN KEY (producto_id_ofertas)
REFERENCES productos(producto_id);

-------------------------

CREATE TABLE productos (
    producto_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    stock_producto INT(10) DEFAULT NULL,
    nombre_producto VARCHAR(25) DEFAULT NULL,   
    pvp_producto INT(10) DEFAULT NULL
) Engine=InnoDB;


CREATE TABLE ofertas (
    oferta_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    producto_id_oferta INT(11) DEFAULT NULL,
    cantidad_producto INT(11) DEFAULT NULL,
    fecha_inicio DATETIME DEFAULT NULL,
    fecha_fin DATETIME DEFAULT NULL,
    pvp_producto INT(11) DEFAULT NULL  
) Engine=InnoDB;


-- FK -- 

ALTER TABLE compras_has_productos
ADD CONSTRAINT fk_compra_id_compras_has_productos
FOREIGN KEY (id_compra)
REFERENCES compras(compra_id);


CREATE TABLE compras_has_productos (
    id_chasp INT AUTO_INCREMENT PRIMARY KEY,
    id_compra INT(11) DEFAULT NULL,
    id_producto INT(11) DEFAULT NULL,
    estado_pedido VARCHAR(25) DEFAULT NULL
) Engine=InnoDB;


CREATE TABLE configuraciones(
    id_admin INT(11) AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(255) DEFAULT NULL,
    pass VARCHAR(255) DEFAULT NULL
) Engine=InnoDB;

-- VIEW --

CREATE VIEW listaUsuariosCompras as (SELECT usuario_id, usuario_nombre, email, compra_id FROM compras JOIN usuarios ON (usuario_id_compra=usuario_id));










