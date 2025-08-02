import jwt from "jsonwebtoken";

export const validarJWT = (req, res, next) => {
  const authHeader = req.header("Authorization");

  if (!authHeader || !authHeader.startsWith("Bearer ")) {
    return res.status(401).json({
      ok: false,
      msg: "No se proporcionó token válido",
    });
  }

  const token = authHeader.split(" ")[1]; // 👈 esto extrae el puro token

  try {
    const payload = jwt.verify(token, process.env.JWT_SECRET);

    req.usuario = payload; // puedes acceder a req.usuario.id, .rol, .sede, etc.

    next();
  } catch (error) {
    console.error("❌ Token inválido:", error);
    return res.status(401).json({
      ok: false,
      msg: "Token inválido",
    });
  }
};
