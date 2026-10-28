INSERT INTO Usuario(id_usuario, nombre, correo, telefono)
VALUES
(1, 'Juan lopez', 'juan@gmail.com', '3001111111'),
(2, 'Maria perez', 'maria@gmail.com', '30022255222'),
(3, 'Carlos consales', 'carlos@gmail.com', '3001033343'),
(4, 'Laura lorenzo', 'laura@gmail.com', '3004444444'),
(5, 'Andres Ramirez', 'andres@gmail.com', '30052075555'),
(6, 'Sofia perez', 'sofia@gmail.com', '30066666345');

INSERT INTO Restaurante(id_restaurante, nombre, direccion, telefono)
VALUES
(1, 'Delicias de Casa', 'Calle 10 # 5-20', '3101111111'),
(2, 'Pizza Express', 'Carrera 8 # 12-30', '3102222222'),
(3, 'Hamburguesas El Parque', 'Calle 6 # 4-15', '3103333333'),
(4, 'Sabor Colombiano', 'Carrera 5 # 10-20', '3104444444'),
(5, 'Pollo Dorado', 'Calle 12 # 8-10', '3105555555'),
(6, 'Comidas Rapidas Leo', 'Carrera 7 # 9-15', '3106666666');

INSERT INTO Repartidor(id_repartidor, nombre, telefono, disponible)
VALUES
(1, 'zara Ruiz', '3201111111', 1),
(2, 'maria Torres', '3202222222', 1),
(3, 'DaniloMarin', '3203333333', 0),
(4, 'maicol Rojas', '3204444444', 1),
(5, 'luisa Diaz', '3205555555', 1),
(6, 'yhon Ramirez', '3206666666', 0);

INSERT INTO Plato
(id_plato, id_restaurante, nombre, descripcion, precio, disponible)
VALUES
(1, 1, 'Arroz mixto', 'Arroz con pollo y ensalada', 23000, 1),
(2, 2, 'Pizza vegetariana', 'Pizza con vegetales y carne', 28000, 1),
(3, 3, 'Carne a la plancha', 'Carne con arroz y vegetales', 27000, 1),
(4, 4, 'Churrasco', 'Carne asada con papas fritas', 34000, 1),
(5, 5, 'Alitas BBQ', 'Alitas con salsa BBQ', 21000, 1),
(6, 6, 'Empanadas mixtas', 'Empanadas de carne y queso', 12000, 1),
(7, 1, 'Lasaña de pollo', 'Lasaña con queso y carne molida', 26000, 1),
(8, 2, 'Pizza de champiñones', 'Pizza con champiñones y jamosn', 29000, 1),
(9, 3, 'Pechuga gratinada', 'Pechuga con queso derretido', 31000, 1),
(10, 4, 'Costillas asadas', 'Costillas con salsa BBQ', 35000, 1),
(11, 5, 'Nuggets de pollo', 'Pollo apanado en trozos de carne', 18000, 1),
(12, 6, 'Patacones con carne', 'Patacones con carne molida', 16000, 1);

INSERT INTO Pedido
(id_pedido, id_usuario, id_restaurante, id_repartidor,
 fecha, estado, total, opciones)
VALUES
(1, 1, 1, 1, CURRENT_TIMESTAMP, 'Pendiente', 23000,
 '{"metodo":"efectivo"}'),
(2, 2, 2, 2, CURRENT_TIMESTAMP, 'En camino', 28000,
 '{"metodo":"transferencia"}'),
(3, 3, 3, 3, CURRENT_TIMESTAMP, 'Entregado', 27000,
 '{"metodo":"efectivo"}'),
(4, 4, 4, 4, CURRENT_TIMESTAMP, 'Pendiente', 34000,
 '{"metodo":"transferencia"}'),
(5, 5, 5, 5, CURRENT_TIMESTAMP, 'En camino', 21000,
 '{"metodo":"efectivo"}'),
(6, 6, 6, 6, CURRENT_TIMESTAMP, 'Entregado', 24000,
 '{"metodo":"transferencia"}'),
(7, 1, 1, 2, CURRENT_TIMESTAMP, 'Pendiente', 26000,
 '{"metodo":"efectivo"}'),
(8, 2, 2, 3, CURRENT_TIMESTAMP, 'En camino', 29000,
 '{"metodo":"transferencia"}'),
(9, 3, 3, 4, CURRENT_TIMESTAMP, 'Entregado', 31000,
 '{"metodo":"efectivo"}'),
(10, 4, 4, 5, CURRENT_TIMESTAMP, 'Pendiente', 35000,
 '{"metodo":"transferencia"}'),
(11, 5, 5, 6, CURRENT_TIMESTAMP, 'En camino', 18000,
 '{"metodo":"efectivo"}'),
(12, 6, 6, 1, CURRENT_TIMESTAMP, 'Entregado', 32000,
 '{"metodo":"transferencia"}');

INSERT INTO Detalle_Pedido(id_detalle, id_pedido, id_plato, cantidad,
 precio_unitario, modificaciones_JSON)
VALUES
(1, 1, 1, 1, 25000, '["observacion": ["Sin cambios"]}'),
(2, 2, 2, 1, 30000, '{"observacion":"Extra queso"}'),
(3, 3, 3, 2, 18000, '["observacion":["Sin tomate"]}'),
(4, 4, 4, 1, 20000, '["observacion":["con cilantro"]}'),
(5, 5, 5, 1, 28000, '["observacion":["Bien frito"]}'),
(6, 6, 6, 2, 12000, '["observacion":["con salsas"]}');

-- MOSTRAR LOS REGISTROS DE CADA TABLA
SELECT * FROM Usuario;
SELECT * FROM Restaurante;
SELECT * FROM Repartidor;
SELECT * FROM Plato;
SELECT * FROM Pedido;
SELECT * FROM Detalle_Pedido;