USE unisalud_incidentes;

INSERT INTO usuarios (numero_documento, correo, sede_id, rol_id, user_password) VALUES
-- Bogotá (sede_id = 1)
('100000001', 'admin01.bogota@unal.edu.co', 1, 1, '100000001'),
('100000002', 'usuario01.bogota@unal.edu.co', 1, 2, '100000002'),
('100000003', 'admin02.bogota@unal.edu.co', 1, 1, '100000003'),
('100000004', 'usuario02.bogota@unal.edu.co', 1, 2, '100000004'),
('100000005', 'admin03.bogota@unal.edu.co', 1, 1, '100000005'),
('100000006', 'usuario03.bogota@unal.edu.co', 1, 2, '100000006'),
('100000007', 'admin04.bogota@unal.edu.co', 1, 1, '100000007'),
('100000008', 'usuario04.bogota@unal.edu.co', 1, 2, '100000008'),
('100000009', 'admin05.bogota@unal.edu.co', 1, 1, '100000009'),
('100000010', 'usuario05.bogota@unal.edu.co', 1, 2, '100000010'),

-- Manizales (sede_id = 2)
('200000001', 'admin01.manizales@unal.edu.co', 2, 1, '200000001'),
('200000002', 'usuario01.manizales@unal.edu.co', 2, 2, '200000002'),
('200000003', 'admin02.manizales@unal.edu.co', 2, 1, '200000003'),
('200000004', 'usuario02.manizales@unal.edu.co', 2, 2, '200000004'),
('200000005', 'admin03.manizales@unal.edu.co', 2, 1, '200000005'),
('200000006', 'usuario03.manizales@unal.edu.co', 2, 2, '200000006'),
('200000007', 'admin04.manizales@unal.edu.co', 2, 1, '200000007'),
('200000008', 'usuario04.manizales@unal.edu.co', 2, 2, '200000008'),
('200000009', 'admin05.manizales@unal.edu.co', 2, 1, '200000009'),
('200000010', 'usuario05.manizales@unal.edu.co', 2, 2, '200000010'),

-- Medellín (sede_id = 3)
('300000001', 'admin01.medellin@unal.edu.co', 3, 1, '300000001'),
('300000002', 'usuario01.medellin@unal.edu.co', 3, 2, '300000002'),
('300000003', 'admin02.medellin@unal.edu.co', 3, 1, '300000003'),
('300000004', 'usuario02.medellin@unal.edu.co', 3, 2, '300000004'),
('300000005', 'admin03.medellin@unal.edu.co', 3, 1, '300000005'),
('300000006', 'usuario03.medellin@unal.edu.co', 3, 2, '300000006'),
('300000007', 'admin04.medellin@unal.edu.co', 3, 1, '300000007'),
('300000008', 'usuario04.medellin@unal.edu.co', 3, 2, '300000008'),
('300000009', 'admin05.medellin@unal.edu.co', 3, 1, '300000009'),
('300000010', 'usuario05.medellin@unal.edu.co', 3, 2, '300000010'),

-- Palmira (sede_id = 4)
('400000001', 'admin01.palmira@unal.edu.co', 4, 1, '400000001'),
('400000002', 'usuario01.palmira@unal.edu.co', 4, 2, '400000002'),
('400000003', 'admin02.palmira@unal.edu.co', 4, 1, '400000003'),
('400000004', 'usuario02.palmira@unal.edu.co', 4, 2, '400000004'),
('400000005', 'admin03.palmira@unal.edu.co', 4, 1, '400000005'),
('400000006', 'usuario03.palmira@unal.edu.co', 4, 2, '400000006'),
('400000007', 'admin04.palmira@unal.edu.co', 4, 1, '400000007'),
('400000008', 'usuario04.palmira@unal.edu.co', 4, 2, '400000008'),
('400000009', 'admin05.palmira@unal.edu.co', 4, 1, '400000009'),
('400000010', 'usuario05.palmira@unal.edu.co', 4, 2, '400000010');
