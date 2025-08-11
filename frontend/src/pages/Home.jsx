import { useEffect, useState } from "react";
import { useAuth } from "../context/AuthContext";

export default function Home() {
  const { user, token, logout } = useAuth();
  const [usuarios, setUsuarios] = useState([]);
  const [error, setError] = useState("");

  useEffect(() => {
    fetch(`${import.meta.env.VITE_API_URL}/usuarios/test`, {
      headers: { Authorization: `Bearer ${token}` },
    })
      .then(async (res) => {
        const data = await res.json();
        if (!res.ok) throw new Error(data?.msg || "Error");
        setUsuarios(data.usuarios);
      })
      .catch((err) => setError(err.message));
  }, [token]);

  return (
    <div style={{ padding: 20 }}>
      <h1>Hola {user?.correo}</h1>
      <p>Rol: {user?.rol?.nombre} | Sede: {user?.sede?.nombre}</p>
      <button onClick={logout}>Cerrar sesión</button>
      <hr />
      {error && <p style={{ color: "crimson" }}>{error}</p>}
      {usuarios.length > 0 && (
        <pre>{JSON.stringify(usuarios, null, 2)}</pre>
      )}
    </div>
  );
}
