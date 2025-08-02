-- ======================================================
-- Base de datos: unisalud_incidentes
-- Sistema de gestión de incidentes en una intranet hospitalaria
-- ======================================================

-- Crear la base de datos (si no existe)
CREATE DATABASE IF NOT EXISTS unisalud_incidentes
  DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE unisalud_incidentes;

-- ======================================================
-- Tabla: sedes
-- Define las sedes físicas o regionales del hospital
-- ======================================================
CREATE TABLE sedes (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- Identificador único de la sede
    nombre VARCHAR(100) NOT NULL UNIQUE COMMENT 'Nombre de la sede o ciudad'
);

-- ======================================================
-- Tabla: roles
-- Define los tipos de usuario del sistema
-- ======================================================
CREATE TABLE roles (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- Identificador único del rol
    nombre VARCHAR(50) NOT NULL UNIQUE COMMENT 'Nombre del rol (administrador, usuario)'
);

-- ======================================================
-- Tabla: usuarios
-- Contiene los datos de los funcionarios registrados en el sistema
-- ======================================================
CREATE TABLE usuarios (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- Identificador único del usuario

    numero_documento VARCHAR(30) NOT NULL COMMENT 'Número de documento de identidad del usuario',
    correo VARCHAR(190) NOT NULL COMMENT 'Correo electrónico del usuario',
    sede_id INT UNSIGNED NOT NULL COMMENT 'ID de la sede a la que pertenece el usuario',
    rol_id INT UNSIGNED NOT NULL COMMENT 'ID del rol asignado al usuario',
    user_password VARCHAR(255) NOT NULL COMMENT 'Contraseña almacenada en formato hash',
    creado_en TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha de creación del usuario',

    UNIQUE KEY uq_usuarios_documento (numero_documento), -- Evita duplicación de documentos
    UNIQUE KEY uq_usuarios_correo (correo), -- Evita duplicación de correos

    FOREIGN KEY (sede_id) REFERENCES sedes(id),
    FOREIGN KEY (rol_id) REFERENCES roles(id)
);

-- ======================================================
-- Tabla: categorias
-- Representa los microservicios o módulos funcionales
-- ======================================================
CREATE TABLE categorias (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- Identificador único de la categoría
    nombre VARCHAR(100) NOT NULL UNIQUE COMMENT 'Nombre del microservicio o módulo funcional'
);

-- ======================================================
-- Tabla: subcategorias
-- Representa funcionalidades específicas dentro de una categoría
-- ======================================================
CREATE TABLE subcategorias (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- Identificador único de la subcategoría
    categoria_id INT UNSIGNED NOT NULL COMMENT 'ID de la categoría asociada',
    nombre VARCHAR(150) NOT NULL COMMENT 'Nombre de la funcionalidad o submódulo',

    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

-- ======================================================
-- Tabla: prioridades
-- Define los niveles de prioridad para los incidentes
-- ======================================================
CREATE TABLE prioridades (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- Identificador único de la prioridad
    nombre VARCHAR(50) NOT NULL UNIQUE COMMENT 'Nivel de prioridad (baja, media, alta)'
);

-- ======================================================
-- Tabla: causas
-- Describe los posibles motivos de los incidentes
-- ======================================================
CREATE TABLE causas (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- Identificador único de la causa
    nombre VARCHAR(100) NOT NULL UNIQUE COMMENT 'Motivo o causa del incidente'
);

-- ======================================================
-- Tabla: incidentes
-- Registra los reportes de incidentes realizados por los usuarios
-- ======================================================
CREATE TABLE incidentes (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- Identificador único del incidente

    usuario_id INT UNSIGNED NOT NULL COMMENT 'ID del usuario que reporta el incidente',
    categoria_id INT UNSIGNED NOT NULL COMMENT 'ID del microservicio relacionado',
    subcategoria_id INT UNSIGNED NOT NULL COMMENT 'ID de la funcionalidad específica',
    prioridad_id INT UNSIGNED NOT NULL COMMENT 'ID del nivel de prioridad asignado',
    causa_id INT UNSIGNED NOT NULL COMMENT 'ID de la causa del incidente',

    area_responsable VARCHAR(100) DEFAULT NULL COMMENT 'Nombre del área responsable (texto libre)',
    asunto VARCHAR(255) NOT NULL COMMENT 'Título o resumen del incidente',
    descripcion TEXT NOT NULL COMMENT 'Descripción detallada del incidente',
    archivo VARCHAR(255) DEFAULT NULL COMMENT 'Ruta del archivo adjunto, si aplica',

    creado_en TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha y hora de creación del incidente',

    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (categoria_id) REFERENCES categorias(id),
    FOREIGN KEY (subcategoria_id) REFERENCES subcategorias(id),
    FOREIGN KEY (prioridad_id) REFERENCES prioridades(id),
    FOREIGN KEY (causa_id) REFERENCES causas(id)
);
