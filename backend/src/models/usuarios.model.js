import pool from "../database/connection.js";

const login = async (correoNorm) => {
  const [rows] = await pool.query(
    `SELECT 
       u.id, u.correo, u.numero_documento, u.user_password,
       r.id AS rol_id, r.nombre AS rol,
       s.id AS sede_id, s.nombre AS sede
     FROM usuarios u
     JOIN roles r ON u.rol_id = r.id
     JOIN sedes s ON u.sede_id = s.id
     WHERE LOWER(u.correo) = ?
     LIMIT 1`,
    [correoNorm.toLowerCase()]
  );
  return rows[0];
};


const obtenerUsuarios = async () => {
  const [rows] = await pool.query(`
    SELECT u.id, u.correo, r.nombre AS rol, s.nombre AS sede
    FROM usuarios u
    JOIN roles r ON u.rol_id = r.id
    JOIN sedes s ON u.sede_id = s.id
    ORDER BY u.id DESC
    LIMIT 10
  `);
  return rows;
};


export {
  obtenerUsuarios,
  login,
}