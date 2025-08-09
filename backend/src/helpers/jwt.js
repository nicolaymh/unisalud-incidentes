import jwt from "jsonwebtoken";

// Firmar un token con datos personalizados
export const generarToken = (payload) => {
  return jwt.sign(payload, process.env.JWT_SECRET, {
    expiresIn: process.env.JWT_EXPIRES_IN || "1d"
  });
};

// Verificar un token y devolver su contenido
export const verificarToken = (token) => {
  return jwt.verify(token, process.env.JWT_SECRET);
};