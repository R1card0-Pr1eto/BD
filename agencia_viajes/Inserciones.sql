use mydb;

INSERT INTO `mydb`.`personas` (`ID_personas`, `nombre`, `fecha_nacimiento`, `edad`, `descripcion`, `created`)
VALUES 
(1, 'Juan Pérez', '1990-05-15', 33, 'Amante de los viajes', NOW()),
(2, 'María Gómez', '1985-08-22', 38, 'Viajera frecuente', NOW()),
(3, 'Carlos López', '1995-03-10', 28, 'Aventurero', NOW()),
(4, 'Ana Martínez', '1980-12-05', 43, 'Turista profesional', NOW()),
(5, 'Luis Rodríguez', '1992-07-30', 31, 'Explorador', NOW());

INSERT INTO `mydb`.`usuarios` (`ID_usuarios`, `username`, `password`, `correo_electronico`, `telefono`, `personas_ID_personas`, `created`)
VALUES 
(1, 'juanperez', 'password123', 'juan@example.com', 123456789, 1, NOW()),
(2, 'mariagomez', 'password456', 'maria@example.com', 987654321, 2, NOW()),
(3, 'carloslopez', 'password789', 'carlos@example.com', 555555555, 3, NOW()),
(4, 'anamartinez', 'password012', 'ana@example.com', 444444444, 4, NOW()),
(5, 'luisrodriguez', 'password345', 'luis@example.com', 666666666, 5, NOW());


INSERT INTO `mydb`.`tipo_usuarios` (`ID_tipo_usuarios`, `nombre_tipo_usuario`, `descripcion`, `usuarios_ID_usuarios`, `created`)
VALUES 
(1, 'Administrador', 'Usuario con privilegios', 1, NOW()),
(2, 'Usuario estándar', 'Usuario regular', 2, NOW()),
(3, 'Invitado', 'Usuario temporal', 3, NOW()),
(4, 'Premium', 'Usuario con beneficios', 4, NOW()),
(5, 'Básico', 'Usuario con acceso limitado', 5, NOW());

INSERT INTO `mydb`.`Viajes` (`ID_viajes`, `Destino`, `Origen`, `numero_vuelo`, `asientos`, `usuarios_ID_usuarios`, `created`)
VALUES 
(1, 'París', 'Madrid', 101, 150, 1, NOW()),
(2, 'Nueva York', 'Barcelona', 202, 200, 2, NOW()),
(3, 'Tokio', 'Valencia', 303, 180, 3, NOW()),
(4, 'Londres', 'Sevilla', 404, 170, 4, NOW()),
(5, 'Berlín', 'Bilbao', 505, 160, 5, NOW());


INSERT INTO `mydb`.`Registro_viajes` (`ID_Registro_viajes`, `numero_viajes`, `agencia`, `llegada`, `salida`, `Viajes_ID_viajes`, `created`)
VALUES 
(1, 1, 'Agencia A', '2025-03-15 10:00:00', '2025-03-15 08:00:00', 1, NOW()),
(2, 2, 'Agencia B', '2025-03-16 12:00:00', '2025-03-16 10:00:00', 2, NOW()),
(3, 3, 'Agencia C', '2025-03-17 14:00:00', '2025-03-17 12:00:00', 3, NOW()),
(4, 4, 'Agencia D', '2025-03-18 16:00:00', '2025-03-18 14:00:00', 4, NOW()),
(5, 5, 'Agencia E', '2025-03-19 18:00:00', '2025-03-19 16:00:00', 5, NOW());