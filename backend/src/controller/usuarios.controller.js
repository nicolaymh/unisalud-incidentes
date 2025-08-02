import pool from "../database/connection.js"


const login = (req, res) => {
    const { correo, numero_documento } =req.body;

    console.log("Datos recibidos", correo, numero_documento);

    return res.status(200).json({
        ok:true,
        msg: "Controlador funcionando correctamente",
        datos: { correo, numero_documento },
    })
};


const listarUsuarios = async (req, res) => {
  try {
    const [rows] = await pool.query(`
      SELECT u.id, u.correo, u.numero_documento, r.nombre AS rol, s.nombre AS sede
      FROM usuarios u
      JOIN roles r ON u.rol_id = r.id
      JOIN sedes s ON u.sede_id = s.id
      LIMIT 10
    `);

    res.status(200).json({
      ok: true,
      usuarios: rows
    });
  } catch (error) {
    console.error("❌ Error al consultar usuarios:", error);
    res.status(500).json({
      ok: false,
      msg: "Error al consultar usuarios"
    });
  }
};


export {
    login,
    listarUsuarios,
}