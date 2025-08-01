-- Insertar incidentes de prueba
INSERT INTO incidentes (
  usuario_id, categoria_id, subcategoria_id, prioridad_id, causa_id,
  area_responsable, asunto, descripcion, archivo
) VALUES
(
  1,                -- usuario_id (ej: admin)
  2,                -- categoria_id (ej: Agenda médica)
  3,                -- subcategoria_id (ej: Consulta Agendas)
  2,                -- prioridad_id (media)
  1,                -- causa_id (Error de sistema)
  'Área de programación',  -- área responsable (opcional)
  'Error al consultar agenda', -- asunto
  'Al intentar abrir la agenda médica del día martes, el sistema lanza un error 500.', -- descripción
  NULL              -- archivo (opcional)
),
(
  2,
  5,
  25,
  1,
  3,
  'Soporte técnico',
  'Problema de red al guardar auditoría',
  'El sistema se desconectó al guardar la auditoría médica concurrente, provocando pérdida de datos.',
  'adjuntos/error_red_auditoria.pdf'
);
