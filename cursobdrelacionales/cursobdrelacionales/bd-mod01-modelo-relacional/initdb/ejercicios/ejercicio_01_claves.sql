CREATE TABLE academia.departamentos (     
  id_departamento SERIAL PRIMARY KEY,     
  nombre VARCHAR(100) NOT NULL UNIQUE );  

CREATE TABLE academia.profesores (     
  id_profesor SERIAL PRIMARY KEY,     
  }id_departamento INT NOT NULL,     
  nombre VARCHAR(100) NOT NULL,     
  correo VARCHAR(120) UNIQUE NOT NULL,      
  CONSTRAINT fk_profesor_departamento         
  FOREIGN KEY (id_departamento)  REFERENCES academia.departamentos(id_departamento) ON DELETE RESTRICT  ON UPDATE CASCADE );

INSERT INTO academia.departamentos (nombre)
VALUES 
('Ingeniería de Sistemas'),
('Diseño Gráfico'),
('Administración de Empresas');


INSERT INTO academia.profesores (id_departamento, nombre, correo)
VALUES
(1, 'Carlos Martínez', 'carlos.martinez@academia.com'),
(1, 'Laura Gómez', 'laura.gomez@academia.com'),
(2, 'Andrés Pérez', 'andres.perez@academia.com'),
(3, 'María Rodríguez', 'maria.rodriguez@academia.com'),
(2, 'Sofía Hernández', 'sofia.hernandez@academia.com');

SELECT      
  p.nombre AS profesor,     
  p.correo,     
  d.nombre AS departamento FROM academia.profesores p JOIN academia.departamentos d     
  ON p.id_departamento = d.id_departamento;
