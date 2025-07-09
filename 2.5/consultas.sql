use ejemploselect;

SELECT u.username, u.email, t.nombre_tipo
FROM usuarios u, tipo_usuarios t
WHERE u.id_tipo_usuario = 2
AND u.id_tipo_usuario = t.id_tipo;
-- 1.-  Mostrar todos los usuarios de tipo Cliente
-- Seleccionar nombre de usuario, correo y tipo_usuario

SELECT p.fecha_nac, p.nombre_completo, u.username
FROM personas p, usuarios u
WHERE fecha_nac >= "1990-01-01";
-- 2.-  Mostrar Personas nacidas despues del año 1990
-- Seleccionar Nombre, fecha de nacimiento y username.

SELECT p.nombre_completo, u.email
FROM personas p, usuarios u
WHERE nombre_completo LIKE "A%" AND u.id_usuario = p.id_usuario;
-- 3.- Seleccionar nombres de personas que comiencen con la 
-- letra A - Seleccionar nombre y correo la persona.

SELECT u.username, u.email
FROM usuarios u
WHERE email LIKE "%mail.com%";
-- 4.- Mostrar usuarios cuyos dominios de correo sean
-- mail.commit LIKE '%mail.com%'

SELECT u.username, c.nombre_ciudad
FROM ciudad c, usuarios u, personas p
WHERE c.id_ciudad != 2  and  p.id_ciudad = c.id_ciudad;
-- 5.- Mostrar todas las personas que no viven en 
 -- Valparaiso y su usuario + ciudad.
 
 SELECT u.username, u.email
FROM usuarios u
WHERE LENGTH(username) > 7;

SELECT u.username, p.fecha_nac
FROM usuarios u, personas p
WHERE YEAR(fecha_nac) BETWEEN 1990 AND 1995;





