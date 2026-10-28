SELECT 
-- Selección de campos relevantes de las tablas involucradas
-- Le decimos a sqlite que nos devuelva el ID del pedido, el nombre del cliente, el nombre del plato, 
--la cantidad y las opciones solicitadas en formato JSON
    p.ID_Pedido,
    --Le decimos a sqlite que nos devuelva el nombre del cliente y del plato en lugar de sus IDs
    u.Nombre AS Cliente,
    pl.Nombre AS Plato,
    dp.Cantidad,
    -- Uso de json_extract para sacar elementos específicos del string JSON
    json_extract(dp.modificaciones_JSON, '$.observacion[0]') AS Instruccion_Especial
-- De la tabla Pedido, unimos con Usuario para obtener el nombre del cliente, con Detalle_Pedido para obtener
-- los detalles del pedido y con Plato para obtener el nombre del plato
FROM Pedido p
JOIN Usuario u ON p.ID_Usuario = u.ID_Usuario
JOIN Detalle_Pedido dp ON p.ID_Pedido = dp.ID_Pedido
JOIN Plato pl ON dp.ID_Plato = pl.ID_Plato;

SELECT
    -- Datos principales del pedido
    p.ID_Pedido,
    u.Nombre AS Cliente,
    r.Nombre AS Restaurante,
    p.Fecha,
    p.Estado,
    p.Total

-- Tabla principal
FROM Pedido p

-- Buscamos el nombre del cliente
JOIN Usuario u
    ON p.ID_Usuario = u.ID_Usuario

-- Buscamos el nombre del restaurante
JOIN Restaurante r
    ON p.ID_Restaurante = r.ID_Restaurante

-- Mostramos solamente los pedidos pendientes
WHERE p.Estado = 'Pendiente';


SELECT
    -- Datos del plato
    pl.ID_Plato,
    pl.Nombre AS Plato,
    r.Nombre AS Restaurante,
    pl.Precio,
    pl.Disponible

-- Tabla principal
FROM Plato pl

-- Relacionamos cada plato con su restaurante
JOIN Restaurante r
    ON pl.ID_Restaurante = r.ID_Restaurante

-- Organizamos los platos por precio,
-- del más costoso al más económico
ORDER BY pl.Precio DESC;