-- Insertar datos en la tabla Doctores
INSERT INTO Doctores (id_doctor, nombre, apellido, dni, especialidad, telefono, email, trabaja_dias) VALUES
('1201', 'Juan', 'Pérez', '12345678', 'Cardiología', '123456789', 'juan.perez@example.com', 'Lunes a Viernes'),
('1202', 'Ana', 'García', '87654321', 'Neurología', '987654321', 'ana.garcia@example.com', 'Lunes a Miércoles'),
('1203', 'Carlos', 'López', '56789012', 'Pediatría', '567890123', 'carlos.lopez@example.com', 'Martes y Jueves'),
('1204', 'María', 'Rodríguez', '21098765', 'Dermatología', '210987654', 'maria.rodriguez@example.com', 'Viernes'),
('1205', 'Luis', 'Martínez', '34567890', 'Oftalmología', '345678901', 'luis.martinez@example.com', 'Lunes a Viernes');

-- Insertar datos en la tabla Pacientes
INSERT INTO Pacientes (id_paciente, id_historiaClinica, id_turno, nombres, apellidos, fecha_nacimiento, genero, direccion, telefono, email, dni, tipo_paciente) VALUES
('500555', 1, NULL, 'Pedro', 'Gómez', '1980-01-01', 'Masculino', 'Calle Falsa 123', '111222333', 'pedro.gomez@example.com', '123456789', 'Particular'),
('506766', 2, NULL, 'Laura', 'Fernández', '1990-02-02', 'Femenino', 'Avenida Siempre Viva 456', '222333444', 'laura.fernandez@example.com', '987654321', 'Particular'),
('509999', 3, NULL, 'Miguel', 'Ruiz', '2000-03-03', 'Masculino', 'Calle 42', '333444555', 'miguel.ruiz@example.com', '567890123', 'Particular'),
('400909', 4, NULL, 'Sofía', 'Hernández', '1995-04-04', 'Femenino', 'Avenida 3', '444555666', 'sofia.hernandez@example.com', '210987654', 'Obra Social A'),
('302345', 5, NULL, 'Diego', 'Sánchez', '1985-05-05', 'Masculino', 'Boulevard 9', '555666777', 'diego.sanchez@example.com', '345678901', 'Obra Social A'),
('500001',150, NULL,'Luis', 'Martínez','1990-04-12', 'M', 'Calle Falsa 123', '555-1234', 'luis.martinez@gmail.com', '12345678', 'Particular'),
('405634',250,NULL,'Julia','Castro','1990-05-12','M', 'moreno 15 1c','11345358','jc@gmail.com','45458594','Obra Social A'),
('204564',350,NULL,'Roberto','lazzy','2020-10-22','M','Entre Rios 344','11343486','rob@gmail.com','50450534','Prepaga A'),
('103434',450,NULL,'Lucas','Cretto','1993-07-19','M','av. Rivadavia 8000','1134344','luc@gmail.com','43434334','Prepaga B'),
('500002',151, NULL,'Ana', 'García', '1985-07-22', 'F', 'Avenida Siempre Viva 742', '555-5678', 'ana.garcia@yahoo.com', '87654321', 'Particular'),
('500003', 152,NULL,'Carlos', 'Perez', '1992-11-30', 'M', 'Calle Luna 33', '555-4321', 'carlos.perez@gmail.com', '23456789', 'Particular'),
('500004', 153,NULL,'María', 'López', '1988-03-15', 'F', 'Calle Sol 56', '555-8765', 'maria.lopez@gmail.com', '98765432', 'Particular'),
('500005',154,NULL,'Juan', 'Gomez', '1995-06-10', 'M', 'Avenida Mar 89', '555-3456', 'juan.gomez@gmail.com', '34567890', 'Particular'),
('500006',155,NULL, 'Laura', 'Díaz', '1993-09-25', 'F', 'Calle Río 12', '555-6543', 'laura.diaz@yahoo.com', '45678901', 'Particular'),
('500007',156,NULL,'Pedro', 'Fernández','1987-01-05', 'M', 'Avenida Viento 78', '555-7890', 'pedro.fernandez@example.com', '56789012', 'Particular'),
('400001',608,NULL, 'Carlos', 'García', '1990-05-14', 'M', 'Calle Falsa 123', '555-1234', 'carlos.garcia@gmail.com', '12345678', 'Obra Social A'),
('400002',609,NULL,'María', 'López', '1985-08-22', 'F', 'Avenida Siempre Viva 456', '555-2345', 'maria.lopez@gmail.com', '23456789', 'Obra Social A'),
('400003',610,NULL,'Juan', 'Martínez', '1978-03-15', 'M', 'Calle Luna 789', '555-3456', 'juan.martinez@gmail.com', '34567890', 'Obra Social A'),
('400004',611,NULL,'Ana', 'Pérez', '1995-11-30', 'F', 'Avenida Sol 101', '555-4567', 'ana.perez@gmail.com', '45678901', 'Obra Social A');
-- Insertar datos en la tabla Turnos

INSERT INTO Turnos (id_doctor, id_paciente, tipo_paciente, fecha_turno, hora_inicio, motivo)
 VALUES
('1201', '500001','Particular', '2024-07-05', '09:00:00', 'Consulta general'),
('1202', '405634', 'Obra Social A','2024-07-06', '10:00:00', 'Consulta por dolor de cabeza'),
('1204', '103434', 'Prepaga B','2024-07-08', '12:00:00', 'Consulta por seguimiento de tratamiento'),
('1205', '302345','Obra Social A','2024-07-09', '13:00:00', 'Consulta por análisis de resultados');


INSERT INTO Consulta (cod_consulta, precio_consulta)
VALUES 
(05, 15000);
