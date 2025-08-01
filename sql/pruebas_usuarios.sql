-- Insertar usuarios de prueba
INSERT INTO usuarios (numero_documento, correo, sede_id, rol_id, contrasena_hash) VALUES
('100000001', 'admin@hospital.edu.co', 1, 1, '$2b$10$z1ZBpCml6IVCqFPobP7a0eFZxeXurZX/.2g64ewG0rqVO6eObOn0K'), -- admin123
('100000002', 'user1@hospital.edu.co', 2, 2, '$2b$10$1zRnmvp0g/1PfeMrf0p4E.Ond2FqXg0IO5Nndy7c4V6jj9xZuE2QG'), -- user123
('100000003', 'user2@hospital.edu.co', 3, 2, '$2b$10$1zRnmvp0g/1PfeMrf0p4E.Ond2FqXg0IO5Nndy7c4V6jj9xZuE2QG'); -- user123
