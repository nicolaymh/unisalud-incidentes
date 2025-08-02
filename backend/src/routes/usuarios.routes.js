
import { Router } from "express";

import * as usuarioController from "../controller/usuarios.controller.js"


const router = Router();

router.get("/login", usuarioController.login);
router.get("/test", usuarioController.listarUsuarios); // <--- nueva ruta de prueba

export default router;