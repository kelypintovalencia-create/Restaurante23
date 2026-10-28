INSERT INTO Usuario(id_usuario, nombre, correo, telefono)
VALUES
(1, 'Daniela Castro', 'daniela.castro@gmail.com', '3010234567'),
(2, 'Sebastian Mora', 'sebastian.mora@gmail.com', '3010345678'),
(3, 'Valentina Gil', 'valentina.gil@gmail.com', '3010456789'),
(4, 'Mateo Cardona', 'mateo.cardona@gmail.com', '3010567890'),
(5, 'Isabella Rios', 'isabella.rios@gmail.com', '3010678901'),
(6, 'Nicolas Vega', 'nicolas.vega@gmail.com', '3010789012');

INSERT INTO Restaurante(id_restaurante, nombre, direccion, telefono)
VALUES
(1, 'El Rincon del Sabor', 'Calle 15 # 6-25', '3111234567'),
(2, 'Pizzeria Italia', 'Carrera 9 # 14-18', '3112345678'),
(3, 'La Cocina de la Abuela', 'Calle 8 # 3-40', '3113456789'),
(4, 'Parrilla Campestre', 'Carrera 4 # 11-22', '3114567890'),
(5, 'El Buen Pollo', 'Calle 20 # 7-16', '3115678901'),
(6, 'Antojitos Express', 'Carrera 12 # 5-30', '3116789012');

INSERT INTO Repartidor(id_repartidor, nombre, telefono, disponible)
VALUES
(1, 'Felipe Restrepo', '3131234567', 1),
(2, 'Natalia Ospina', '3132345678', 1),
(3, 'Samuel Cardenas', '3133456789', 0),
(4, 'Juliana Mejia', '3134567890', 1),
(5, 'Tomas Herrera', '3135678901', 1),
(6, 'Manuela Franco', '3136789012', 0);

INSERT INTO Plato(id_plato, id_restaurante, nombre, descripcion, precio, disponible)
VALUES
(1, 1, 'Burrito de pollo', 'Tortilla rellena de pollo', 19000, 1),
(2, 2, 'Pizza cuatro quesos', 'Pizza con mezcla de quesos', 33000, 1),
(3, 3, 'Filete de pescado', 'Pescado con arroz y ensalada', 29000, 1),
(4, 4, 'Lomo saltado', 'Carne salteada con verduras', 32000, 1),
(5, 5, 'Pollo a la naranja', 'Pollo con salsa de naranja', 27000, 1),
(6, 6, 'Arepa de choclo', 'Arepa dulce con queso', 14000, 1),
(7, 1, 'Enchiladas', 'Tortillas rellenas con salsa', 24000, 1),
(8, 2, 'Calzone de jamon', 'Masa rellena de jamon y queso', 31000, 1),
(9, 3, 'Pasta Alfredo', 'Pasta con salsa cremosa', 25000, 1),
(10, 4, 'Costilla de cerdo', 'Costilla con ensalada', 36000, 1),
(11, 5, 'Salchipapa especial', 'Papas con salchicha y queso', 20000, 1),
(12, 6, 'Tacos de carne', 'Tortillas con carne y verduras', 22000, 1);

INSERT INTO Pedido(id_pedido, id_usuario, id_restaurante, id_repartidor,
 fecha, estado, total, opciones)
VALUES
(1, 2, 3, 1, CURRENT_TIMESTAMP, 'Pendiente', 29000,
 '{"metodo":"efectivo"}'),
(2, 4, 1, 3, CURRENT_TIMESTAMP, 'En camino', 19000,
 '{"metodo":"transferencia"}'),
(3, 6, 5, 2, CURRENT_TIMESTAMP, 'Entregado', 27000,
 '{"metodo":"efectivo"}'),
(4, 1, 2, 4, CURRENT_TIMESTAMP, 'Pendiente', 33000,
 '{"metodo":"transferencia"}'),
(5, 3, 6, 5, CURRENT_TIMESTAMP, 'En camino', 14000,
 '{"metodo":"efectivo"}'),
(6, 5, 4, 6, CURRENT_TIMESTAMP, 'Entregado', 32000,
 '{"metodo":"transferencia"}'),
(7, 2, 1, 4, CURRENT_TIMESTAMP, 'En camino', 24000,
 '{"metodo":"efectivo"}'),
(8, 4, 5, 2, CURRENT_TIMESTAMP, 'Pendiente', 20000,
 '{"metodo":"transferencia"}'),
(9, 6, 2, 1, CURRENT_TIMESTAMP, 'Entregado', 31000,
 '{"metodo":"efectivo"}'),
(10, 1, 6, 3, CURRENT_TIMESTAMP, 'En camino', 22000,
 '{"metodo":"transferencia"}'),
(11, 3, 3, 5, CURRENT_TIMESTAMP, 'Pendiente', 25000,
 '{"metodo":"efectivo"}'),
(12, 5, 4, 6, CURRENT_TIMESTAMP, 'Entregado', 36000,
 '{"metodo":"transferencia"}');

INSERT INTO Detalle_Pedido(id_detalle, id_pedido, id_plato, cantidad,
 precio_unitario, modificaciones)
VALUES
(1, 1, 1, 1, 22000, '{"observacion":"Con poca sal"}'),
(2, 2, 2, 1, 32000, '{"observacion":"Extra queso"}'),
(3, 3, 3, 1, 26000, '{"observacion":"Sin salsa"}'),
(4, 4, 4, 1, 35000, '{"observacion":"Salsa aparte"}'),
(5, 5, 5, 1, 24000, '{"observacion":"Bien crocante"}'),
(6, 6, 6, 2, 15000, '{"observacion":"Con bastante queso"}');

SELECT * FROM Usuario;
SELECT * FROM Restaurante;
SELECT * FROM Repartidor;
SELECT * FROM Plato;
SELECT * FROM Pedido;
SELECT * FROM Detalle_Pedido;