import pool from "../database/connection.js"
import { obtenerUsuarios } from "../models/usuarios.model.js";


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
    const usuarios = await obtenerUsuarios();
    res.status(200).json({ ok: true, usuarios });
  } catch (error) {
    console.error("❌ Error al consultar usuarios:", error);
    res.status(500).json({ ok: false, msg: "Error al consultar usuarios" });
  }
};



export {
    login,
    listarUsuarios,
}