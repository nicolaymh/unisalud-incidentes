-- 🔢 Total de categorías
SELECT COUNT(*) AS total_categorias FROM categorias;

-- 🔢 Total de subcategorías
SELECT COUNT(*) AS total_subcategorias FROM subcategorias;

-- 📋 Listar todas las categorías
SELECT * FROM categorias;

-- 📋 Listar todas las subcategorías
SELECT * FROM subcategorias;

-- 📋 Subcategorías por categoría (con nombre)
SELECT c.nombre AS categoria, s.nombre AS subcategoria
FROM subcategorias s
JOIN categorias c ON s.categoria_id = c.id
ORDER BY c.id, s.id;

-- 🔢 Cuántas subcategorías tiene cada categoría
SELECT c.nombre AS categoria, COUNT(s.id) AS total_subcategorias
FROM categorias c
LEFT JOIN subcategorias s ON s.categoria_id = c.id
GROUP BY c.id
ORDER BY c.id;

-- 📋 Ver prioridades ordenadas
SELECT * FROM prioridades ORDER BY id;

-- 📋 Ver roles existentes
SELECT * FROM roles;

-- 📋 Ver sedes disponibles
SELECT * FROM sedes;

-- 📋 Ver causas registradas
SELECT * FROM causas;

-- 📋 Mostrar estructura de una tabla (por ejemplo 'incidentes')
SHOW COLUMNS FROM incidentes;

-- 🔍 Buscar una subcategoría específica (ejemplo: 'RIPS')
SELECT * FROM subcategorias WHERE nombre LIKE '%RIPS%';

-- 🔍 Buscar categorías que no tienen subcategorías asociadas
SELECT c.nombre AS categoria_sin_sub
FROM categorias c
LEFT JOIN subcategorias s ON s.categoria_id = c.id
WHERE s.id IS NULL;
