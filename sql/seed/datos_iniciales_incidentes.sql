USE unisalud_incidentes;

-- ============================
-- Tabla: roles
-- ============================
INSERT INTO roles (id, nombre) VALUES
(1, 'administrador'),
(2, 'usuario');

-- ============================
-- Tabla: sedes
-- ============================
INSERT INTO sedes (id, nombre) VALUES
(1, 'Bogotá'),
(2, 'Manizales'),
(4, 'Medellín'),
(3, 'Palmira');

-- ============================
-- Tabla: prioridades
-- ============================
INSERT INTO prioridades (id, nombre, orden) VALUES
(1, 'baja', 1),
(2, 'media', 2),
(3, 'alta', 3),
(4, 'crítica', 4);

-- ============================
-- Tabla: causas
-- ============================
INSERT INTO causas (id, nombre) VALUES
(1, 'Error de aplicación'),
(2, 'Problema de red/conectividad'),
(3, 'Error de configuración/parametrización'),
(4, 'Seguridad/acceso no autorizado'),
(5, 'Otro');

-- ============================
-- Tabla: categorías (microservicios)
-- ============================
INSERT INTO categorias (id, nombre) VALUES
(1, 'Afiliaciones'),
(2, 'Agenda médica'),
(3, 'Auditoría cuentas médicas'),
(4, 'Auditoría de sistema'),
(5, 'Auditoría médica concurrente'),
(6, 'Autorizaciones'),
(7, 'Caja y facturación'),
(8, 'Calidad'),
(9, 'Comité técnico científico'),
(10, 'Convenios y contratos'),
(11, 'Datos maestros'),
(12, 'Historia clínica'),
(13, 'Imagenología'),
(14, 'Informes'),
(15, 'Laboratorio clínico'),
(16, 'Prestaciones económicas'),
(17, 'Procesos estratégicos'),
(18, 'Referencia y contrarreferencia'),
(19, 'Usuarios'),
(20, 'Otros');

-- ============================
-- Subcategorías por categoría
-- ============================
INSERT INTO subcategorias (categoria_id, nombre) VALUES
-- Afiliaciones
(1, 'Consultar Solicitudes de Afiliación'),
(1, 'Crear UPC adicional'),

-- Agenda médica
(2, 'Administración de Consultorios'),
(2, 'Agendar Citas'),
(2, 'Consulta Agendas'),
(2, 'Demanda Insatisfecha'),
(2, 'Gestión de Agenda Asistencial'),
(2, 'Información Médico'),
(2, 'Multas por Servicio'),
(2, 'Parametrizar Citas'),
(2, 'Parámetros Tiempos Citas'),
(2, 'Tablero de Multas'),

-- Auditoría cuentas médicas
(3, 'Consulta Cuentas Médicas'),
(3, 'Descarga Glosa Final'),
(3, 'Descarga Glosa Inicial'),
(3, 'Descarga Glosa Sostenida'),
(3, 'Descarga Trazabilidad Glosas'),
(3, 'Detalle de Facturas'),
(3, 'Parametrizacion Dias Laborales'),
(3, 'Radicación RIPS'),
(3, 'Respuesta Glosa Inicial'),
(3, 'Respuesta Glosa Sostenida'),
(3, 'Tablero de Facturas'),
(3, 'Trazabilidad de la Radicación de la Facturación'),

-- Auditoría de sistema
(4, 'Trazas de Auditoría'),

-- Auditoría médica concurrente
(5, 'Consultar informes consolidados Auditoría médica concurrente'),
(5, 'Gestión de Auditorias'),

-- Autorizaciones
(6, 'Consulta de Autorizaciones'),
(6, 'Parametrizador Auxilio Lentes y Monturas'),
(6, 'Parámetros Exoneración'),

-- Caja y facturación
(7, 'Cargos Facturados'),
(7, 'Facturación de Contado'),
(7, 'Maestro Efectivo Base'),

-- Calidad
(8, 'Auditoria Historia Clinica'),
(8, 'Condiciones de Habilitación'),
(8, 'Formato calidad Historia Clinica'),
(8, 'Integrantes Comité'),
(8, 'Maestro Comité'),
(8, 'Reuniones Comité'),
(8, 'Tipos Formato Calidad'),

-- Comité técnico científico
(9, 'Consultar CTC'),

-- Convenios y contratos
(10, 'Administración de EAPB'),
(10, 'Administración de Planes'),
(10, 'Administración de Proveedores'),
(10, 'Bloqueo de Capacidad Contratada'),
(10, 'Capacidad Contratada'),
(10, 'Consulta Maestros Grupos CUPS'),
(10, 'Consultar Servicios Cups'),
(10, 'Escalas Socioeconómicas'),
(10, 'Indicadores de Contratación'),
(10, 'Medicamentos'),
(10, 'Planes de Beneficios'),
(10, 'Servicios por Prestador'),
(10, 'Tarifas por Servicio'),

-- Datos maestros
(11, 'Consultar Datos Maestros'),

-- Historia clínica
(12, 'Atención Pacientes'),
(12, 'Configuración de Plantillas'),
(12, 'Creador de Formatos'),
(12, 'Diccionario de Formularios'),
(12, 'Grupos Etareos'),
(12, 'Parametrizador RIAS'),
(12, 'Préstamo de Historia Clínica'),
(12, 'Recomendaciones'),

-- Imagenología
(13, 'Ayudas diagnósticas'),
(13, 'Consulta Imagenología'),
(13, 'Resultados Imagenología'),

-- Informes
(14, 'Diseñador de Informes'),
(14, 'Generador de Consultas'),

-- Laboratorio clínico
(15, 'Consulta Grupo Etáreo Laboratorio'),
(15, 'Consulta Laboratorio Clínico'),
(15, 'Consulta Parámetros por Examen de Laboratorio'),
(15, 'Consultar Examenes por Sección'),
(15, 'Resultados de Exámenes'),

-- Prestaciones económicas
(16, 'Licencias e Incapacidades'),

-- Procesos estratégicos
(17, 'Consulta Comités'),
(17, 'Consultar Maestro Acta Consecutivo Comité'),
(17, 'Tablero de Compromisos'),

-- Referencia y contrarreferencia
(18, 'Consulta Referencia'),

-- Usuarios
(19, 'Consulta Maestros Correos por Área'),
(19, 'Consultar Perfil'),
(19, 'Crear Usuarios'),

-- Otros
(20, 'Cargue Nómina'),
(20, 'Adres'),
(20, 'Aportes'),
(20, 'Crear solicitud');


-- ============================
-- Checks de verificación
-- ============================
SELECT COUNT(*) AS total_roles FROM roles;
SELECT * FROM sedes;
SELECT * FROM prioridades ORDER BY orden;
SELECT COUNT(*) AS total_categorias FROM categorias;
SELECT COUNT(*) AS total_subcategorias FROM subcategorias;