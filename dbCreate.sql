----------/Script de creacion de tablas/----------
-- Tabla Cliente
CREATE TABLE Cliente (
    rut VARCHAR(100) PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    correo VARCHAR(100),
    contrasena VARCHAR(100),
    fechaNacimiento DATE,
    nacionalidad VARCHAR(100)
);

-- Tabla Compania
CREATE TABLE Compania (
    id_compania INT PRIMARY KEY,
    nombre VARCHAR(100)
);

-- Tabla Cliente_Compania (Tabla de relación muchos a muchos entre Cliente y Compania)
CREATE TABLE Cliente_Compania (
    id_compania INT,
    rut VARCHAR(100),
    PRIMARY KEY (id_compania, rut),
    FOREIGN KEY (id_compania) REFERENCES Compania(id_compania),
    FOREIGN KEY (rut) REFERENCES Cliente(rut)
);


-- Tabla Vuelo
CREATE TABLE Vuelo (
    id_vuelo INT PRIMARY KEY,
    paisOrigen VARCHAR(100),
    paisDestino VARCHAR(100),
    rut VARCHAR(100),
    FOREIGN KEY (rut) REFERENCES Cliente(rut)
);

-- Tabla Modelo
CREATE TABLE Modelo (
    id_modelo INT PRIMARY KEY,
    nombre VARCHAR(100)
);

-- Tabla Avion
CREATE TABLE Avion (
    Patente VARCHAR(100) PRIMARY KEY,
    capacidad INT,
    tipo VARCHAR(100),
    fechaFabricacion DATE,
    id_modelo INT,
    id_compania INT,
    FOREIGN KEY (id_modelo) REFERENCES Modelo(id_modelo),
    FOREIGN KEY (id_compania) REFERENCES Compania(id_compania)
);

-- Tabla Avion_Vuelo (Tabla de relación muchos a muchos entre Avion y Vuelo)
CREATE TABLE Avion_Vuelo (
    patente VARCHAR(100),
    id_vuelo INT,
    PRIMARY KEY (patente, id_vuelo),
    FOREIGN KEY (patente) REFERENCES Avion(patente),
    FOREIGN KEY (id_vuelo) REFERENCES Vuelo(id_vuelo)
);


-- Tabla Compania_Vuelo (Tabla de relación muchos a muchos entre Compania y Vuelo)
CREATE TABLE Compania_Vuelo (
    id_compania INT,
    id_vuelo INT,
    PRIMARY KEY (id_compania, id_vuelo),
    FOREIGN KEY (id_compania) REFERENCES Compania(id_compania),
    FOREIGN KEY (id_vuelo) REFERENCES Vuelo(id_vuelo)
);

-- Tabla Seccion
CREATE TABLE Seccion (
    id_seccion INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(100)
);

-- Tabla Costo
CREATE TABLE Costo (
    id_costo INT PRIMARY KEY,
    monto INT
);


-- Tabla Pasaje
CREATE TABLE Pasaje (
    id_pasaje INT PRIMARY KEY,
    fechaPasaje DATE,
    paisOrigen VARCHAR(100),
    paisDestino VARCHAR(100),
    fechaInicio DATE,
    fechaLlegada DATE,
    id_seccion INT,
    id_vuelo INT,
    id_costo INT,
    FOREIGN KEY (id_seccion) REFERENCES Seccion(id_seccion),
    FOREIGN KEY (id_vuelo) REFERENCES Vuelo(id_vuelo),
    FOREIGN KEY (id_costo) REFERENCES Costo(id_costo)
);

-- Tabla Sueldo
CREATE TABLE Sueldo (
    id_sueldo INT PRIMARY KEY,
    monto INT,
    mes INT,
    ano INT
);

-- Tabla Empleado
CREATE TABLE Empleado (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(100),
    cargo VARCHAR(100),
    id_vuelo INT,
    id_sueldo INT,
    FOREIGN KEY (id_vuelo) REFERENCES Vuelo(id_vuelo),
    FOREIGN KEY (id_sueldo) REFERENCES Sueldo(id_sueldo)
);