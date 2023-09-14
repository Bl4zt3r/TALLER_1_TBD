-- Creación de la tabla Cliente
CREATE TABLE Cliente (
    rut varchar(100) PRIMARY KEY,
    nombre varchar(100),
    apellido varchar(100),
    correo varchar(100),
    contrasena varchar(100),
    fechaNacimiento date,
    nacionalidad varchar(100)
);

-- Creación de la tabla Compania
CREATE TABLE Compania (
    id_compania serial PRIMARY KEY,
    nombre varchar(100)
);

-- Creación de la tabla Cliente_Compania
CREATE TABLE Cliente_Compania (
    id_compania int REFERENCES Compania(id_compania),
    rut varchar(100) REFERENCES Cliente(rut)
);

-- Creación de la tabla Seccion
CREATE TABLE Seccion (
    id_seccion serial PRIMARY KEY,
    nombre varchar(100),
    descripcion varchar(100)
);

-- Creación de la tabla Vuelo
CREATE TABLE Vuelo (
    id_vuelo serial PRIMARY KEY,
    paisOrigen varchar(100),
    paisDestino varchar(100)
);

-- Creación de la tabla Compania_Vuelo
CREATE TABLE Compania_Vuelo (
    id_compania int REFERENCES Compania(id_compania),
    id_vuelo int REFERENCES Vuelo(id_vuelo)
);

-- Creación de la tabla Costo
CREATE TABLE Costo (
    id_costo serial PRIMARY KEY,
    monto numeric(10, 2)
);

-- Creación de la tabla Sueldo
CREATE TABLE Sueldo (
    id_sueldo serial PRIMARY KEY,
    monto numeric(10, 2),
    mes int,
    ano int
);

-- Creación de la tabla Empleado
CREATE TABLE Empleado (
    id_empleado serial PRIMARY KEY,
    nombre varchar(100),
    cargo varchar(100),
    id_sueldo int REFERENCES Sueldo(id_sueldo)
);

-- Creación de la tabla Empleado_Vuelo
CREATE TABLE Empleado_Vuelo (
    id_empleado int REFERENCES Empleado(id_empleado),
    id_vuelo int REFERENCES Vuelo(id_vuelo)
);

-- Creación de la tabla Modelo
CREATE TABLE Modelo (
    id_modelo serial PRIMARY KEY,
    nombre varchar(100)
);

-- Creación de la tabla Pasaje
CREATE TABLE Pasaje (
    id_pasaje serial PRIMARY KEY,
    fechaPasaje date,
    paisOrigen varchar(100),
    paisDestino varchar(100),
    fechaInicio date,
    fechaLlegada date,
    id_seccion int REFERENCES Seccion(id_seccion),
    id_vuelo int REFERENCES Vuelo(id_vuelo),
    id_costo int REFERENCES Costo(id_costo)
);

-- Creación de la tabla Avion
CREATE TABLE Avion (
    patente varchar(100) PRIMARY KEY,
    capacidad int,
    tipo varchar(100),
    fechaFabricacion date,
    id_modelo int REFERENCES Modelo(id_modelo),
    id_compania int REFERENCES Compania(id_compania)
);

-- Creación de la tabla Cliente_Vuelo
CREATE TABLE Cliente_Vuelo (
    rut varchar(100) REFERENCES Cliente(rut),
    id_vuelo int REFERENCES Vuelo(id_vuelo)
);

-- Creación de la tabla Avion_Vuelo
CREATE TABLE Avion_Vuelo (
    patente varchar(100) REFERENCES Avion(patente),
    id_vuelo int REFERENCES Vuelo(id_vuelo)
);
