import express from "express";
import dotenv from "dotenv";
import cors from "cors";

import usuariosRoutes from "./routes/usuarios.routes.js"


dotenv.config();

const app = express();
app.use(express.json());
app.use(cors());

app.use("/api/usuarios", usuariosRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`🚀 Servidor corriendo en el puerto ${PORT}`)
})