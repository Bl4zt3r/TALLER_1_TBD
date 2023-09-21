

--pregunta 1

SELECT vuelo.paisdestino, COUNT(DISTINCT pasaje.id_pasaje) AS cantidad_viajes
FROM cliente
JOIN cliente_vuelo ON cliente.rut = cliente_vuelo.rut
JOIN vuelo ON cliente_vuelo.id_vuelo = vuelo.id_vuelo
JOIN pasaje ON vuelo.id_vuelo = pasaje.id_vuelo
WHERE cliente.nacionalidad = 'Chileno'
  AND EXTRACT(YEAR FROM pasaje.fechapasaje) >= EXTRACT(YEAR FROM CURRENT_DATE) - 4
GROUP BY vuelo.paisdestino
ORDER BY cantidad_viajes DESC;


-- pregunta 2


SELECT s.nombre, COUNT(*) as total_comprado
FROM pasaje AS p
JOIN cliente AS c ON p.rut = c.rut
JOIN vuelo AS v ON p.id_vuelo = v.id_vuelo
JOIN seccion AS s ON p.id_seccion = s.id_seccion
WHERE c.nacionalidad = 'Argentino'
GROUP BY s.nombre
ORDER BY total_comprado DESC;


----------/Pregunta 3/----------
SELECT
    Pasaje.fechaPasaje AS Mes,
    Vuelo.paisDestino AS Pais,
    SUM(Costo.monto) AS Total_Gastado
FROM
    Pasaje
JOIN
    Vuelo ON Pasaje.id_vuelo = Vuelo.id_vuelo
JOIN
    Costo ON Pasaje.id_costo = Costo.id_costo
WHERE
    DATE_PART('year', Pasaje.fechaPasaje) >= (DATE_PART('year', CURRENT_DATE) - 4)
GROUP BY
    Pasaje.fechaPasaje, Vuelo.paisDestino
ORDER BY
    mes ASC;

----------/Pregunta 4/----------
SELECT DISTINCT
    Cliente.nombre AS nombre,
	COUNT(*) AS total
FROM
    Pasaje
JOIN
    Cliente ON Pasaje.rut = Cliente.rut
JOIN
    Seccion ON Pasaje.id_seccion = Seccion.id_seccion
WHERE
    Seccion.nombre = 'Primera Clase' 
	AND DATE_PART('month', Pasaje.fechaInicio) = DATE_PART('month', Pasaje.fechaLlegada)
GROUP BY
    Cliente.nombre
HAVING
    COUNT(Pasaje.fechaInicio) > 4;


-- pregunta 5


SELECT a.*
FROM avion a
JOIN (
    SELECT av.patente, COUNT(*) AS contador,
           ROW_NUMBER() OVER (ORDER BY COUNT(*) ASC) AS row_num
    FROM avion_vuelo av
    JOIN pasaje p ON av.id_vuelo = p.id_vuelo
    GROUP BY av.patente
) AS R
ON a.patente = R.patente
WHERE R.row_num = 1;


-- pregunta 6


SELECT e.id_empleado, e.cargo, s.monto, s.mes, s.ano
FROM empleado e
JOIN sueldo s ON e.id_sueldo = s.id_sueldo
WHERE e.cargo = 'Piloto'
  AND s.ano >= EXTRACT (YEAR FROM CURRENT_DATE) - 4
ORDER BY s.monto DESC, s.ano DESC, s.mes DESC;


-- pregunta 8


SELECT co.nombre, EXTRACT (YEAR FROM fechafabricacion) as ano, COUNT(*) AS cantidad_aviones
FROM avion
join avion_vuelo as av on av.patente = avion.patente
join compania_vuelo as cv on cv.id_vuelo = av.id_vuelo
join compania co on co.id_compania = cv.id_compania
WHERE EXTRACT (YEAR FROM fechafabricacion) > EXTRACT (YEAR FROM CURRENT_DATE) - 10 
group by co.nombre, fechafabricacion


-- pregunta 9


SELECT nombre, ano, SUM(monto) FROM
(SELECT co.nombre,s.monto, s.ano, COUNT(*) as cantidad_empleados
from empleado as e
join sueldo as s on e.id_sueldo = s.id_sueldo
join empleado_vuelo as es on e.id_empleado = es.id_empleado
join compania_vuelo as cv on es.id_vuelo = cv.id_vuelo
join compania as co on cv.id_compania = co.id_compania
WHERE s.ano > EXTRACT (YEAR FROM CURRENT_DATE) - 10
GROUP BY co.nombre, s.monto, s.ano
ORDER BY co.nombre DESC) AS r1
GROUP BY nombre, ano
ORDER BY ano DESC;
