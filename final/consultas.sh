mysql -u root -p1234 -e "\
use 3T;
drop table if exists Venta;
-- 
-- SELECT id, firstName , lastName FROM Clientes;
-- SELECT id, modelo, anio, color FROM Vehiculos;
-- SELECT id, clienteId FROM Ventas;
-- 
SELECT * FROM Ventas JOIN Clientes 
ON Ventas.clienteId = Clientes.id;
-- 
SELECT Ventas.id as 'v.id', Ventas.clienteID as 'fk', Clientes.id as 'Cl.id'
FROM Ventas JOIN Clientes 
ON Ventas.clienteId = Clientes.id;
--
SELECT * FROM Ventas JOIN Vehiculos
ON Ventas.vehiculoId = Vehiculos.id;


"

mysql -u root -p1234 -e "\
use 3T;
--    SELECT * FROM Clientes JOIN Ventas 
--    ON Clientes.id = Ventas.clienteId;
"