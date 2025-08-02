import pool from "../database/connection.js";

export const obtenerUsuarios = async () => {
  const [rows] = await pool.query(`
    SELECT u.id, u.correo, u.numero_documento, r.nombre AS rol, s.nombre AS sede
    FROM usuarios u
    JOIN roles r ON u.rol_id = r.id
    JOIN sedes s ON u.sede_id = s.id
    LIMIT 10
  `);
  return rows;
};
