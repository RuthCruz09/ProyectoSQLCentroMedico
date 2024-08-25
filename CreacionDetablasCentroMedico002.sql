DROP DATABASE IF EXISTS `CentroMedico002`;
CREATE DATABASE IF NOT EXISTS `CentroMedico002`;
USE `CentroMedico002`;

-- Tabla de Doctores
DROP TABLE IF EXISTS `Doctores`;
CREATE TABLE IF NOT EXISTS `Doctores` (
    id_doctor VARCHAR(50) NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    dni VARCHAR(20) NOT NULL,
    especialidad VARCHAR(500) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100),
    trabaja_dias VARCHAR(500)
);

-- Tabla de Pacientes
DROP TABLE IF EXISTS `Pacientes`;
CREATE TABLE IF NOT EXISTS `Pacientes` (
    id_paciente VARCHAR(50) NOT NULL PRIMARY KEY,
    id_historiaClinica INT UNIQUE NOT NULL,
    id_turno INT UNIQUE,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    genero VARCHAR(30),
    direccion VARCHAR(255),
    telefono VARCHAR(15),
    email VARCHAR(100),
    dni VARCHAR(100) NOT NULL,
    tipo_paciente VARCHAR(200)
);

-- Tabla de Consulta
DROP TABLE IF EXISTS `Consulta`;
CREATE TABLE IF NOT EXISTS `Consulta` (
    cod_consulta INT PRIMARY KEY,
    precio_consulta INT
);

-- Tabla de Historia Clinica
DROP TABLE IF EXISTS `HistoriaClinica`;
CREATE TABLE IF NOT EXISTS `HistoriaClinica` (
    id_historiaClinica INT PRIMARY KEY,
    id_paciente VARCHAR(50),
    id_doctor VARCHAR(50),
    estudios_hechos TEXT,
    descripcion TEXT,
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente) ON DELETE CASCADE,
    FOREIGN KEY (id_doctor) REFERENCES Doctores(id_doctor) ON DELETE SET NULL
);

-- Tabla de Turnos
DROP TABLE IF EXISTS `Turnos`;
CREATE TABLE IF NOT EXISTS `Turnos` (
    id_turno INT AUTO_INCREMENT PRIMARY KEY,
    id_doctor VARCHAR(50) NOT NULL,
    id_paciente VARCHAR(50),
    tipo_paciente VARCHAR (100),
    fecha_turno DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    motivo VARCHAR(500),
    FOREIGN KEY (id_doctor) REFERENCES Doctores(id_doctor) ON DELETE CASCADE,
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente) ON DELETE SET NULL
);

