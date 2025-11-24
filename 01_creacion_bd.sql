CREATE DATABASE HotelEstrellaDelValle;
GO

USE HotelEstrellaDelValle;
GO

CREATE TABLE Clientes (
    ClienteID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100),
    Apellido NVARCHAR(100),
    Email NVARCHAR(100),
    Telefono NVARCHAR(20),
    FechaRegistro DATETIME DEFAULT GETDATE()
);

CREATE TABLE Habitaciones (
    HabitacionID INT IDENTITY(1,1) PRIMARY KEY,
    Numero NVARCHAR(10),
    Tipo NVARCHAR(50),
    Precio DECIMAL(10,2),
    Estado NVARCHAR(20)
);

CREATE TABLE Reservas (
    ReservaID INT IDENTITY(1,1) PRIMARY KEY,
    ClienteID INT,
    HabitacionID INT,
    FechaInicio DATE,
    FechaFin DATE,
    Estado NVARCHAR(20),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (HabitacionID) REFERENCES Habitaciones(HabitacionID)
);
