USE profi_bbdd;

DROP TABLE if EXISTS favorito;
DROP TABLE if EXISTS puntuacion;
DROP TABLE if EXISTS usuario;
DROP TABLE if EXISTS juego;

CREATE TABLE usuario(
	id INT PRIMARY KEY AUTO_INCREMENT,
	usuario VARCHAR(20),
	contra VARCHAR(16)

);

CREATE TABLE juego(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(50),
	descripcion VARCHAR(1000),
	dificultad VARCHAR(10),
	tipo VARCHAR(25)
);

CREATE TABLE puntuacion(
	id INT PRIMARY KEY AUTO_INCREMENT,
	puntuacion INT,
	id_juego INT,
	id_usuario INT,
	FOREIGN KEY (id_juego) REFERENCES juego(id),
	FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);

CREATE TABLE favorito(
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_juego INT,
	id_usuario INT,
	FOREIGN KEY (id_juego) REFERENCES juego(id),
	FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);

INSERT INTO usuario(usuario, contra) VALUES
	('usuarioprueba','123456789');