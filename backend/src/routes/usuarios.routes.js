
import { Router } from "express";
import { validarJWT } from "../middlewares/validarJWT.js";

import * as usuarioController from "../controller/usuarios.controller.js"

import { validarRolAdmin } from "../middlewares/validarRolAdmin.js";


const router = Router();

router.post("/login", usuarioController.login);
router.get("/test", validarJWT, validarRolAdmin, usuarioController.listarUsuariosTest); // <--- nueva ruta de prueba

export default router;