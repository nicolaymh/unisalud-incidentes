import pool from "../database/connection.js"
import * as usuariosModel from "../models/usuarios.model.js"
import { generarToken } from "../helpers/jwt.js"


const login = async (req, res) => {
  const { correo, password } = req.body;

  try {
    const usuario = await usuariosModel.login(correo);

    if (!usuario) {
      return res.status(401).json({
        ok: false,
        msg: "Correo no registrado",
      });
    }

    if (usuario.user_password !== password) {
      return res.status(401).json({
        ok: false,
        msg: "Usuario o contraseña incorrecta",
      });
    }

    // Generar el token JWT
    const token = generarToken({
      id: usuario.id,
      rol: usuario.rol_id,
      sede: usuario.sede_id
    });

    return res.status(200).json({
      ok: true,
      msg: "Login exitoso",
      token,
      usuario: {
        id: usuario.id,
        correo: usuario.correo,
        numero_documento: usuario.numero_documento,
        rol: {
          id: usuario.rol_id,
          nombre: usuario.rol,
        },
        sede: {
          id: usuario.sede_id,
          nombre: usuario.sede,
        },
      },
    });
  } catch (error) {
    console.error("❌ Error en login:", error);
    return res.status(500).json({
      ok: false,
      msg: "Error en el login",
    });
  }
};


const listarUsuariosTest = async (req, res) => {
  try {
    const usuarios = await usuariosModel.obtenerUsuarios();
    res.status(200).json({ ok: true, usuarios });
  } catch (error) {
    console.error("❌ Error al consultar usuarios:", error);
    res.status(500).json({ ok: false, msg: "Error al consultar usuarios" });
  }
};



export {
    login,
    listarUsuariosTest,
}