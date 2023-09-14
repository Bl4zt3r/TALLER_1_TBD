INSERT INTO Cliente (rut, nombre, apellido, correo, contrasena, fechaNacimiento, nacionalidad)
VALUES
('22345678-9', 'Juan', 'Pérez', 'juan.perez@gmail.com', 'Password123', '1990-05-15', 'Chileno'),
('13456789-0', 'María', 'González', 'maria.gonzalez@hotmail.com', 'SecurePass', '1985-08-22', 'Chileno'),
('14567890-1', 'Pedro', 'Sánchez', 'pedro.sanchez@yahoo.com', 'Secret123', '1995-02-10', 'Chileno'),
('15678901-2', 'Ana', 'López', 'ana.lopez@gmail.com', 'Confidential', '1992-11-30', 'Chileno'),
('16789012-3', 'Andrés', 'Fernández', 'andres.fernandez@yahoo.com', 'Pass1234', '1988-07-17', 'Chileno'),
('17890123-4', 'Carolina', 'Martínez', 'carolina.martinez@hotmail.com', 'PrivatePass', '1987-04-05', 'Chileno'),
('18901234-5', 'Javier', 'Rodríguez', 'javier.rodriguez@gmail.com', 'SecretPass123', '1991-09-18', 'Chileno'),
('19012345-6', 'Isabel', 'Gómez', 'isabel.gomez@hotmail.com', 'StrongPassword', '1993-03-25', 'Chileno'),
('20123456-7', 'Diego', 'Hernández', 'diego.hernandez@yahoo.com', 'PasswordSecure', '1994-06-14', 'Chileno'),
('10123456-8', 'Laura', 'Torres', 'laura.torres@gmail.com', 'Pass12345', '1996-12-08', 'Chileno'),
('11234567-9', 'Roberto', 'Lira', 'roberto.lira@hotmail.com', 'SecurePass123', '1989-01-20', 'Chileno'),
('12345678-0', 'Patricia', 'Molina', 'patricia.molina@yahoo.com', 'ConfidentialPass', '1990-04-12', 'Chileno'),
('13456789-1', 'Felipe', 'Silva', 'felipe.silva@gmail.com', 'StrongPass123', '1986-10-02', 'Chileno'),
('14567890-2', 'Daniela', 'Soto', 'daniela.soto@hotmail.com', 'Password12345', '1997-07-28', 'Chileno'),
('15678901-3', 'Carlos', 'Valenzuela', 'carlos.valenzuela@yahoo.com', 'SecretPassSecure', '1984-03-15', 'Chileno'),
('16789012-4', 'Natalia', 'Lagos', 'natalia.lagos@gmail.com', 'SecurePassword123', '1998-05-19', 'Chileno'),
('17890123-5', 'Mauricio', 'Ortega', 'mauricio.ortega@hotmail.com', 'PassSecure123', '1999-08-03', 'Chileno'),
('18901234-6', 'Carmen', 'Ramírez', 'carmen.ramirez@yahoo.com', '1234Password', '1983-09-27', 'Chileno'),
('19012345-7', 'Rodrigo', 'Paredes', 'rodrigo.paredes@gmail.com', 'Secure123Pass', '2000-02-14', 'Chileno'),
('20012345-8', 'Luis', 'Cabrera', 'luis.cabrera@hotmail.com', 'PasswordSecure123', '1982-06-07', 'Chileno'),
('21012345-9', 'Paula', 'Araya', 'paula.araya@yahoo.com', '12345PassSecure', '1981-12-31', 'Chileno'),
('22100000-k', 'Fernando', 'Ibáñez', 'fernando.ibanez@gmail.com', 'SecurePassword12345', '2001-04-24', 'Chileno'),
('13123456-7', 'Camila', 'Gallardo', 'camila.gallardo@hotmail.com', 'Password123Secure', '1980-07-09', 'Colombiano'),
('14234567-8', 'Alejandro', 'Rojas', 'alejandro.rojas@yahoo.com', 'SecurePass12345', '2002-11-16', 'Colombiano'),
('19345678-9', 'Gloria', 'Pizarro', 'gloria.pizarro@gmail.com', '123SecurePass', '1979-01-04', 'Argentino'),
('18345678-9', 'Marta', 'Pizarro', 'pizarro89@gmail.com', '123Pass', '1989-05-04', 'Argentino'),
('15345678-9', 'Rosa', 'Carrasco', 'rosa.carrasco90@gmail.com', '1990Pas', '1999-02-04', 'Argentino'),
('17345000-9', 'Lionel', 'Messi', 'ms10barca@gmail.com', 'sextete10', '1989-02-04', 'Argentino'),
('16456789-0', 'Ricardo', 'Leiva', 'ricardo.leiva@hotmail.com', 'PassSecure12345', '2003-03-08', 'Peruano'),
('17567890-1', 'Danielle', 'Mendez', 'danielle.mendez@yahoo.com', 'Password123Secure', '1978-04-21', 'Ecuatoriano'),
('18678901-2', 'Víctor', 'Castillo', 'victor.castillo@gmail.com', '12345SecurePass', '2004-08-12', 'Venezolano'),
('19789012-3', 'Valentina', 'Santos', 'valentina.santos@hotmail.com', 'SecurePass12345', '1977-10-16', 'Boliviano'),
('20890123-4', 'Héctor', 'Vargas', 'hector.vargas@yahoo.com', 'Password12345Secure', '2005-12-23', 'Paraguayo');

INSERT INTO Cliente_Vuelo (rut, id_vuelo)
VALUES();

INSERT INTO Compania (id_compania, nombre)
VALUES
    (1, 'Aerolíneas Chile'),
    (2, 'Argentina Airways'),
    (3, 'Avianca'),
    (4, 'PeruAir'),
    (5, 'Venezuela Airlines'),
    (6, 'EcuAir'),
    (7, 'Bolivia Airlines'),
    (8, 'Paraguay Airways');

INSERT INTO Cliente_Compania (id_compania, rut)
VALUES
    (1,'22345678-9'),
(1,'13456789-0'),
(1,'14567890-1'),
(1,'15678901-2'),
(1,'16789012-3'),
(1,'17890123-4'),
(1,'18901234-5'),
(1,'19012345-6'),
(1,'20123456-7'),
(1,'10123456-8'),
(1,'11234567-9'),
(1,'12345678-0'),
(1,'13456789-1'),
(1,'14567890-2'),
(1,'15678901-3'),
(1,'16789012-4'),
(1,'17890123-5'),
(1,'18901234-6'),
(1,'19012345-7'),
(2,'20123456-7'),
(2,'22100000-k'),
(3,'13123456-7'),
(3,'14234567-8'),
(2,'19345678-9'),
(2,'18345678-9'),
(2,'15345678-9'),
(2,'17345000-9'),
(4,'16456789-0'),
(6,'17567890-1'),
(5,'18678901-2'),
(7,'19789012-3'),
(8,'20890123-4');

INSERT INTO Vuelo (id_vuelo, paisOrigen, paisDestino)
VALUES
    (101, 'Chile', 'Argentina'),
    (102, 'México', 'España'),   
    (103, 'Argentina', 'Chile'),
    (103, 'Argentina', 'Chile'),
    (104, 'España', 'México'),
    (105, 'Colombia', 'Perú'),
    (106, 'Perú', 'Colombia'),
    (107, 'Venezuela', 'Ecuador'),
    (108, 'Ecuador', 'Venezuela'),
    (109, 'Bolivia', 'Uruguay'),
    (110, 'Uruguay', 'Bolivia');

INSERT INTO Modelo (id_modelo, nombre)
VALUES
    (1, 'Boeing 737'),
    (2, 'Airbus A320'),
    (3, 'Boeing 787'),
    (4, 'Airbus A350'),
    (5, 'Embraer E190'),
    (6, 'Bombardier CRJ900'),
    (7, 'Airbus A330'),
    (8, 'Boeing 777'),
    (9, 'Embraer E175'),
    (10, 'Airbus A380');

INSERT INTO Pasaje (id_pasaje, fechaPasaje, paisOrigen, paisDestino, 
fechaInicio, fechaLlegada, id_seccion, id_vuelo, id_costo) VALUES
();


INSERT INTO Avion (Patente, capacidad, tipo, fechaFabricacion, id_modelo, id_compania)
VALUES
    ('CC-ABC', 150, 'Avión Comercial', '2015-04-10', 1, 1),
    ('MX-123', 180, 'Avión Comercial', '2016-02-15', 2, 2),
    ('AR-456', 200, 'Avión Comercial', '2017-07-20', 3, 3),
    ('ES-789', 250, 'Avión Comercial', '2018-05-30', 4, 4),
    ('CO-234', 120, 'Avión Regional', '2019-09-25', 5, 5),
    ('PE-567', 90, 'Avión Regional', '2020-11-12', 6, 6),
    ('VE-890', 180, 'Avión Comercial', '2016-08-18', 7, 7),
    ('EC-901', 200, 'Avión Comercial', '2017-03-05', 8, 8),
    ('BO-123', 150, 'Avión Comercial', '2018-12-15', 9, 9),
    ('UY-456', 250, 'Avión Comercial', '2019-06-28', 10, 10);

INSERT INTO Avion_Vuelo (patente, id_vuelo)
VALUES
    ('CC-ABC', 101),
    ('MX-123', 102),
    ('AR-456', 103),
    ('ES-789', 104),
    ('CO-234', 105),
    ('PE-567', 106),
    ('VE-890', 107),
    ('EC-901', 108),
    ('BO-123', 109),
    ('UY-456', 110);

INSERT INTO Compania_Vuelo (id_compania, id_vuelo)
VALUES
    (1, 101),
    (2, 102),
    (3, 103),
    (4, 104),
    (5, 105),
    (6, 106),
    (7, 107),
    (8, 108),
    (9, 109),
    (10, 110);

INSERT INTO Seccion (id_seccion, nombre, descripcion)
VALUES
    (1, 'Económica', 'Asientos económicos con espacio estándar'),
    (2, 'Ejecutiva', 'Asientos de mayor comodidad y servicio'),
    (3, 'Primera Clase', 'Máximo lujo y comodidad'),
    (4, 'Económica', 'Asientos económicos con espacio estándar'),
    (5, 'Ejecutiva', 'Asientos de mayor comodidad y servicio'),
    (6, 'Primera Clase', 'Máximo lujo y comodidad'),
    (7, 'Económica', 'Asientos económicos con espacio estándar'),
    (8, 'Ejecutiva', 'Asientos de mayor comodidad y servicio'),
    (9, 'Primera Clase', 'Máximo lujo y comodidad'),
    (10, 'Económica', 'Asientos económicos con espacio estándar');

INSERT INTO Costo (id_costo, monto)
VALUES
    (1, 300),
    (2, 500),
    (3, 800),
    (4, 350),
    (5, 600),
    (6, 900),
    (7, 320),
    (8, 520),
    (9, 850),
    (10, 310);

INSERT INTO Sueldo (id_sueldo, monto, mes, ano)
VALUES
    (1, 4500, 9, 2023),
    (2, 5200, 9, 2023),
    (3, 6000, 9, 2023),
    (4, 4800, 9, 2023),
    (5, 5500, 9, 2023),
    (6, 6200, 9, 2023),
    (7, 4600, 9, 2023),
    (8, 5300, 9, 2023),
    (9, 6100, 9, 2023),
    (10, 4700, 9, 2023);

INSERT INTO Empleado (id_empleado, nombre, cargo, id_sueldo)
VALUES
    (1, 'Alejandro Torres', 'Piloto', 1),
    (2, 'Laura Martínez', 'Azafata', 2),
    (3, 'Carlos López', 'Azafato', 3),
    (4, 'Andrea Ramírez', 'Piloto', 4),
    (5, 'Javier Rodríguez', 'Azafata', 5),
    (6, 'Ana Gómez', 'Azafata', 6),
    (7, 'Luis Hernández', 'Piloto', 7),
    (8, 'María González', 'Azafata', 8),
    (9, 'Pablo Sánchez', 'Azafato', 9),
    (10, 'Sofía Fernández', 'Piloto', 10);

INSERT INTO Empledo_Vuelo(id_empleado, id_vuelo)
VALUES ();








