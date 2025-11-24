CREATE PROCEDURE sp_crear_reserva
    @ClienteID INT,
    @HabitacionID INT,
    @FechaInicio DATE,
    @FechaFin DATE
AS
BEGIN
    INSERT INTO Reservas (ClienteID, HabitacionID, FechaInicio, FechaFin, Estado)
    VALUES (@ClienteID, @HabitacionID, @FechaInicio, @FechaFin, 'Activa');
END;
