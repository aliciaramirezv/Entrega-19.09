-- Parte 4

-- Query 1
SELECT * FROM usuarios;

-- Query 2
SELECT * FROM videos;

-- Query 3
SELECT * FROM comentarios;

-- Query 4
SELECT * FROM likes;

-- Query 5
SELECT * FROM seguidores;

-- Query 6
SELECT país FROM usuarios
WHERE país = 'España';

-- Query 7
SELECT correo FROM usuarios
WHERE correo = 'pedro@email.com';

-- Query 8
SELECT nombre_usuario FROM usuarios
WHERE nombre_usuario = 'Lucía';
