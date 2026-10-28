Keli Lorena Pinto Valencia

AppDelivery

Clasificación de las entidades por dominio

En el proyecto AppDelivery, las entidades se organizan en tres dominios: actores, catálogo y transaccional. Esta clasificación permite identificar la función que cumple cada tabla dentro de la aplicación.

1. Dominio de actores

En este dominio se encuentran las personas que participan en el servicio de domicilios.

- Usuario: almacena los datos de los clientes que realizan pedidos.
- Repartidor: guarda la información de las personas encargadas de entregar los pedidos.

2. Dominio de catálogo

En este dominio se encuentran los restaurantes y los platos que se ofrecen en la aplicación.

- Restaurante: almacena el nombre, la dirección y el teléfono de cada restaurante.
- Plato: contiene los nombres, las descripciones, los precios y la disponibilidad de los platos ofrecidos por los restaurantes.

3. Dominio transaccional

En este dominio se registran las operaciones que se realizan dentro de la aplicación.

- Pedido: almacena la información de cada pedido, como el cliente, el restaurante, la fecha, el estado y el total.
- Detalle_Pedido: registra los platos incluidos en cada pedido, la cantidad solicitada, el precio unitario y las modificaciones realizadas.

Resumen de la clasificación

Dominio| Entidades
Actores| Usuario, Repartidor
Catálogo| Restaurante, Plato
Transaccional| Pedido, Detalle_Pedido

Esta clasificación permite organizar mejor la base de datos y comprender cómo se relacionan las entidades dentro de AppDelivery.