CREATE DATABASE IF NOT EXISTS jovenes_a_la_e;

USE jovenes_a_la_e;

-- 1. Tabla de Localidades
CREATE TABLE localidad (
  localidad_id INT PRIMARY KEY AUTO_INCREMENT,
  nombre_localidad VARCHAR(100) NOT NULL
);

-- 2. Instituciones de Educación Superiors
CREATE TABLE inst_edu_superior (
  inst_edu_superior_id INT PRIMARY KEY,
  nombre_inst_edu_superior VARCHAR(100) NOT NULL
);

-- 3. Programas académicos
CREATE TABLE programa (
  programa_id INT PRIMARY KEY AUTO_INCREMENT,
  nombre_programa VARCHAR(100) NOT NULL,
  modalidad VARCHAR(50) NOT NULL,
  inst_edu_superior_id INT NOT NULL,
  FOREIGN KEY (inst_edu_superior_id) REFERENCES inst_edu_superior(inst_edu_superior_id) ON DELETE CASCADE
);

-- 4. Estudiantes
CREATE TABLE estudiante (
  estudiante_id INT PRIMARY KEY AUTO_INCREMENT,
  documento_identidad VARCHAR(20) UNIQUE NOT NULL,
  rango_edad VARCHAR(20) NOT NULL,
  genero VARCHAR(20) NOT NULL,
  grupo_etnico VARCHAR(200) NOT NULL,
  victima_conflicto_arm VARCHAR(10) NOT NULL,
  discapacidad VARCHAR(50) NOT NULL,
  grupo_sisben VARCHAR(100) NOT NULL,
  percentil_saber11 VARCHAR(20) NOT NULL,
  zona_colegio VARCHAR(100) NOT NULL,
  sector_colegio VARCHAR(50) NOT NULL,
  localidad_id INT NOT NULL,
  FOREIGN KEY (localidad_id) REFERENCES localidad(localidad_id) ON DELETE CASCADE
);

-- 5. Convocatorias
CREATE TABLE convocatoria (
  convocatoria_id VARCHAR(5) PRIMARY KEY,
  anio INT NOT NULL
);

-- 6. Participación
CREATE TABLE participacion (
  participacion_id INT PRIMARY KEY AUTO_INCREMENT,
  estudiante_id INT NOT NULL,
  convocatoria_id VARCHAR(5) NOT NULL,
  programa_id INT NOT NULL,
  FOREIGN KEY (estudiante_id) REFERENCES estudiante(estudiante_id) ON DELETE CASCADE,
  FOREIGN KEY (convocatoria_id) REFERENCES convocatoria(convocatoria_id) ON DELETE CASCADE,
  FOREIGN KEY (programa_id) REFERENCES programa(programa_id) ON DELETE CASCADE
);