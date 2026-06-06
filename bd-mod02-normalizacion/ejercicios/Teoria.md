# Análisis de la tabla no normalizada

## 1. ¿Qué datos se repiten?

Los datos que más se repiten son el nombre de la cliente **Ana Torres**, el nombre del vendedor **Carlos** y la ciudad de **Bogotá**.

## 2. ¿Qué columna tiene varios valores en una sola celda?

La columna **Productos** es la que contiene varios valores en una sola celda.

## 3. ¿Qué pasa si un cliente cambia de correo?

Se tendría que actualizar el correo en todas las filas donde aparezca ese cliente. Si alguna fila no se actualiza, se generarían inconsistencias en los datos.

## 4. ¿Qué pasa si se elimina la única venta de un cliente?

También se eliminaría toda la información asociada a ese cliente, provocando una pérdida de datos.

## 5. ¿Se puede registrar un producto sin venta?

No, porque la información de los productos está ligada a las ventas. No es posible registrar un producto de forma independiente.

## 6. ¿Se puede registrar un vendedor sin venta?

No, porque los datos del vendedor solo existen cuando están asociados a una venta.

## 7. ¿Qué entidades reales aparecen en la tabla?

Las entidades reales que aparecen en la tabla son:

- Clientes
- Vendedores
- Productos
- Ventas
- Ciudades