const login = (req, res) => {
    const { correo, numero_documento } =req.body;

    console.log("Datos recibidos", correo, numero_documento);

    return res.status(200).json({
        ok:true,
        msg: "Controlador funcionando correctamente",
        datos: { correo, numero_documento },
    })
};

export {
    login,
}