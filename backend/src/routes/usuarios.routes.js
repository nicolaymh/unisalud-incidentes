
import { Router } from "express";

import * as usuarioController from "../controller/usuarios.controller.js"


const router = Router();

router.get("/login", usuarioController.login);

export default router;