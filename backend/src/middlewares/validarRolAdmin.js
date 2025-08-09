export const validarRolAdmin = (req, res, next) => {
  const rol = Number(req.usuario?.rol);
  if (rol !== 1) {
    return res.status(403).json({ ok: false, msg: "Acceso denegado: se requieren permisos de administrador" });
  }
  next();
};
