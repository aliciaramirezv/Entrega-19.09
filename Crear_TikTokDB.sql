-- Script de creación y carga de datos

-- Crear la base de datos TikTokDB,
CREATE DATABASE TikTokDB;
USE TikTokDB;

-- Craer tablas de la base
CREATE TABLE usuarios (
id_usuario INT AUTO_INCREMENT PRIMARY KEY,
nombre_usuario VARCHAR(50) UNIQUE NOT NULL,
correo VARCHAR (100) UNIQUE NOT NULL,
fecha_registro DATE NOT NULL,
país VARCHAR(50) NOT NULL
);

-- Tabla videos
CREATE TABLE videos (
id_video INT AUTO_INCREMENT PRIMARY KEY,
id_usuario INT NOT NULL,
título VARCHAR(100) NOT NULL,
descripcion TEXT, 
fecha_publicación DATE NOT NULL,
duración_segundos INT NOT NULL,
FOREIGN KEY(id_usuario) REFERENCES usuarios(id_usuario)
);

-- Crear tabla comentarios
CREATE TABLE comentarios (
id_comentarios INT AUTO_INCREMENT PRIMARY KEY,
id_video INT NOT NULL,
id_usuario INT NOT NULL,
texto TEXT NOT NULL,
fecha_comentario DATE NOT NULL,
FOREIGN KEY (id_video) REFERENCES videos (id_video),
FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario)
);

-- Tabla likes
CREATE TABLE likes (
id_like INT AUTO_INCREMENT PRIMARY KEY,
id_video INT NOT NULL,
id_usuario INT NOT NULL,
fecha_like DATE NOT NULL,
FOREIGN KEY (id_video) REFERENCES videos (id_video),
FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario)
);

-- Tabla seguidores
CREATE TABLE seguidores (
id_seguidor INT AUTO_INCREMENT PRIMARY KEY,
id_usuario_seguidor INT NOT NULL,
id_usuario_seguido INT NOT NULL,
fecha_seguimiento DATE NOT NULL,
FOREIGN KEY (id_usuario_seguidor) REFERENCES usuarios (id_usuario),
FOREIGN KEY (id_usuario_seguido) REFERENCES usuarios (id_usuario),
CONSTRAINT check_seguirse CHECK (id_usuario_seguidor <> id_usuario_seguido)
);