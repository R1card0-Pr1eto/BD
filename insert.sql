use mydb;

INSERT INTO Usuarios (ID_usuarios, nombre, correo, contraseña, telefono, tipo_usuarios_ID_tipo_usuarios) VALUES 
(1, 'Juan Pérez', 'juan@example.com', '1234', 5551234, 1),
(2, 'María López', 'maria@example.com', '5678', 5555678, 2),
(3, 'Carlos Gómez', 'carlos@example.com', '8765', 5558765, 3),
(4, 'Ana Martínez', 'ana@example.com', '4321', 5554321, 1),
(5, 'Luisa Ramírez', 'luisa@example.com', '9876', 5559876, 2);


INSERT INTO Pacientes (ID_pacientes, Usuarios_ID_usuarios) VALUES 
(1, 1),
(2, 4),
(3, 6),
(4, 7),
(5, 3);

INSERT INTO medicos (ID_medicos, Usuarios_ID_usuarios, especialidad) VALUES 
(1, 2, 'Cardiología'),
(2, 5, 'Pediatría'),
(3, 3, 'Dermatología'), 
(4, 6, 'Oncología'), 
(5, 7, 'Neurología'); 


INSERT INTO Consultas (ID_consultas, Pacientes_ID_pacientes1, medicos_ID_medicos, fecha, hora, Motivo, Diagnostico) VALUES 
(1, 1, 1, '2023-10-01', '2023-10-01 10:00:00', 'Dolor de pecho', 'Angina de pecho'),
(2, 2, 2, '2023-10-02', '2023-10-02 11:00:00', 'Fiebre alta', 'Gripe común'),
(3, 3, 3, '2023-10-03', '2023-10-03 12:00:00', 'Erupción cutánea', 'Alergia'),
(4, 4, 4, '2023-10-04', '2023-10-04 13:00:00', 'Dolor de cabeza', 'Migraña'),
(5, 5, 5, '2023-10-05', '2023-10-05 14:00:00', 'Mareos', 'Hipotensión');


INSERT INTO Tratamientos (ID_tratamientos, nombre, Descripcion) VALUES 
(1, 'Paracetamol', 'Analgésico y antipirético'),
(2, 'Amoxicilina', 'Antibiótico para infecciones'),
(3, 'Ibuprofeno', 'Antiinflamatorio y analgésico'),
(4, 'Loratadina', 'Antihistamínico para alergias'),
(5, 'Omeprazol', 'Protector gástrico');


INSERT INTO Tratamientos_has_Consultas (Tratamientos_ID_tratamientos, Consultas_ID_consultas) VALUES 
(1, 1),
(3, 1), 
(2, 2), 
(4, 3), 
(5, 4); 




INSERT INTO citas (ID_citas, medicos_ID_medicos, Pacientes_ID_pacientes, fecha_solicitud, estado_solicitud) VALUES 
(1, 1, 1, '2023-09-25', 1), 
(2, 2, 2, '2023-09-26', 0), 
(3, 3, 3, '2023-09-27', 1), 
(4, 4, 4, '2023-09-28', 0), 
(5, 5, 5, '2023-09-29', 1); 