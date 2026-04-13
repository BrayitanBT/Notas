CREATE DATABASE escuela
    DEFAULT CHARACTER SET = 'utf8mb4';

USE escuela;

CREATE TABLE usuarios (
    idUsuario INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(40) NOT NULL,
    passwordUser VARCHAR(255) NOT NULL,
    rolUsu VARCHAR(20) NOT NULL
);
CREATE TABLE estudiantes (
    idEstudiante INT AUTO_INCREMENT PRIMARY KEY,
    nombreEstu VARCHAR(40) NOT NULL,
    edadEstu INT NOT NULL,
    carrera VARCHAR(40) NOT NULL,
    nota1 DECIMAL(5,2),
    nota2 DECIMAL(5,2),
    nota3 DECIMAL(5,2),
    promedio DECIMAL(5,2),
    desempeno VARCHAR(20)
);

ALTER TABLE estudiantes
ADD UNIQUE(nombreEstu, carrera);

INSERT INTO usuarios (username, passwordUser, rolUsu) VALUES
('admin', 'admin123', 'admin'),
('profesor1', 'profe123', 'docente'),
('coordinador', 'coord123', 'admin'),
('usuario1', 'user123', 'usuario'),
('usuario2', 'user456', 'usuario');

INSERT INTO estudiantes (nombreEstu, edadEstu, carrera, nota1, nota2, nota3, promedio, desempeno) VALUES
('Carlos Perez', 20, 'Ingenieria', 4.5, 3.8, 4.2, 4.17, 'Alto'),
('Maria Gomez', 22, 'Derecho', 3.5, 3.2, 3.8, 3.50, 'Basico'),
('Juan Rodriguez', 19, 'Medicina', 4.8, 4.6, 4.9, 4.77, 'Superior'),
('Ana Torres', 21, 'Arquitectura', 2.8, 3.0, 2.9, 2.90, 'Bajo'),
('Luis Martinez', 23, 'Ingenieria', 3.9, 4.1, 4.0, 4.00, 'Alto'),
('Sofia Ramirez', 20, 'Psicologia', 4.2, 4.3, 4.1, 4.20, 'Alto'),
('Diego Castro', 24, 'Administracion', 3.0, 3.2, 3.1, 3.10, 'Basico'),
('Valentina Lopez', 18, 'Diseño', 4.7, 4.8, 4.6, 4.70, 'Superior'),
('Andres Herrera', 22, 'Ingenieria', 2.5, 2.8, 2.7, 2.67, 'Bajo'),
('Camila Vargas', 21, 'Derecho', 3.7, 3.9, 3.8, 3.80, 'Alto');