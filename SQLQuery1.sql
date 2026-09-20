select * from Categoria

select * from Producto where Stock >=10 and nombre<>'Tenis'
select * from Producto where Stock >=10 or nombre<>'Tenis'

-- ORDER BY
-- desc descentente
select * from Producto
ORDER BY Precio desc

select * from Producto where Precio > 51 ORDER BY Precio desc

-- buscar texto con LIKE el like solo se utiliza para cadenas o textos
-- 'c%' comienza con C
-- '%c' termina con C
-- '%c%' contiene C
select * 
from Producto
where Nombre like '%eta'

-- Between
SELECT *
FROM PRODUCTO
WHERE PRECIO BETWEEN 50 AND 70

-- Between
SELECT *
FROM PRODUCTO
WHERE PRECIO >= 50 AND PRECIO <= 70

-- EJ. BETWEEN PARA EL STOCK
SELECT *
FROM PRODUCTO
WHERE STOCK BETWEEN 50 AND 99

-- MODIFICAR
SELECT * FROM PRODUCTO
WHERE NOMBRE = 'Camiseta'


SELECT * FROM PRODUCTO
WHERE NOMBRE = 'Zapatilla'
update Producto
set IdCategoria = 3

where Nombre = 'lentes de sol'
update Producto
set Stock = 45

-- DELETE
select * from Producto
DELETE FROM Producto
WHERE NOMBRE = 'Pantalon'


-- 1. Registrar un producto Mochila
-- (Usa IdCategoria = 3 para 'Accesorios' o 1 para 'Ropa')
INSERT INTO Producto (Nombre, Precio, Stock, IdCategoria) 
VALUES ('Mochila', 120.00, 10, 3);

-- 2. Buscar por LIKE 'chila'
SELECT * 
FROM Producto 
WHERE Nombre LIKE '%chila%';

-- 3. Aumentar 5 unidades a su stock
UPDATE Producto 
SET Stock = Stock + 5 
WHERE Nombre LIKE '%chila%';

-- 4. Mostrar nombre de categoria solo mochila con INNER JOIN
SELECT p.IdProducto, p.Nombre AS Producto, p.Precio, p.Stock, c.Nombre AS Categoria
FROM Producto p
INNER JOIN Categoria c ON p.IdCategoria = c.IdCategoria
WHERE p.Nombre LIKE '%chila%';