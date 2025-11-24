CREATE VIEW vw_reservas_activas AS
SELECT r.ReservaID, c.Nombre, c.Apellido, h.Numero, r.FechaInicio, r.FechaFin
FROM Reservas r
INNER JOIN Clientes c ON r.ClienteID = c.ClienteID
INNER JOIN Habitaciones h ON r.HabitacionID = h.HabitacionID
WHERE r.Estado = 'Activa';
