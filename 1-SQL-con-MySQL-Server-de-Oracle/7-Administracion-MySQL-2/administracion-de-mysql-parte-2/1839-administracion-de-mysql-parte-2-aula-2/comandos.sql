/*
En este notebook encontrarás todos los comandos SQL que ejecutaremos durante el desarrollo del entrenamiento. 

¡Te deseo éxito en tus estudios!
*/


/* PROYECTO DEL AULA ANTERIOR 1*/


-- cost 3.75
SELECT A.CODIGO_DEL_PRODUCTO FROM tabla_de_productos A;

-- cost 60654.92
SELECT A.CODIGO_DEL_PRODUCTO, C.CANTIDAD FROM tabla_de_productos A 
INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO;

-- cost 211939.80
SELECT A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) AS ANO,C.CANTIDAD FROM tabla_de_productos A 
INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO 
INNER JOIN facturas B ON C.NUMERO = B.NUMERO;

-- cost 211939.80
SELECT A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) AS ANO, SUM(C.CANTIDAD) AS CANTIDAD FROM tabla_de_productos A 
INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO 
INNER JOIN facturas B ON C.NUMERO = B.NUMERO 
GROUP BY A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) 
ORDER BY A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA);


# Los siguientes comandos se ejecutan en mysql desde el símbolo del sistema 

mysql> EXECUTE SELECT A.CODIGO_DEL_PRODUCTO FROM tabla_de_productos A;

mysql> EXECUTE FORMAT=JSON SELECT A.CODIGO_DEL_PRODUCTO FROM tabla_de_productos A \G;

mysql> EXECUTE FORMAT=JSON SELECT A.CODIGO_DEL_PRODUCTO, C.CANTIDAD FROM tabla_de_productos A INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO \G;

mysql> EXECUTE FORMAT=JSON SELECT A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) AS ANO,C.CANTIDAD FROM tabla_de_productos A INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO INNER JOIN facturas B ON C.NUMERO = B.NUMERO \G;

mysql> EXECUTE FORMAT=JSON SELECT A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) AS ANO, SUM(C.CANTIDAD) AS CANTIDAD FROM tabla_de_productos A INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO INNER JOIN facturas B ON C.NUMERO = B.NUMERO GROUP BY A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) ORDER BY A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) \G;
