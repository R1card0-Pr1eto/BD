use mydb;

SELECT * FROM Usuarios;
SELECT * FROM medicos;
SELECT * FROM Consultas;
SELECT * FROM Tratamientos;
SELECT * FROM citas;

UPDATE Usuarios
SET telefono = 5550000
WHERE ID_usuarios = 1;

UPDATE Consultas
SET Diagnostico = 'Resfriado común'
WHERE ID_consultas = 2;

UPDATE citas
SET estado_solicitud = 1 -- Aprobada
WHERE ID_citas = 2;

DELETE FROM Tratamientos
WHERE ID_tratamientos = 3;

DELETE FROM citas
WHERE ID_citas = 2;
