

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


-- pregunta 8


SELECT co.nombre, EXTRACT (YEAR FROM fechafabricacion) as ano, COUNT(*) AS cantidad_aviones
FROM avion
join avion_vuelo as av on av.patente = avion.patente
join compania_vuelo as cv on cv.id_vuelo = av.id_vuelo
join compania co on co.id_compania = cv.id_compania
WHERE EXTRACT (YEAR FROM fechafabricacion) > EXTRACT (YEAR FROM CURRENT_DATE) - 10 
group by co.nombre, fechafabricacion


-- pregunta 9


SELECT nombre, SUM(monto) FROM
(SELECT co.nombre,s.monto, COUNT(*) as cantidad_empleados
from empleado as e
join sueldo as s on e.id_sueldo = s.id_sueldo
join empleado_vuelo as es on e.id_empleado = es.id_empleado
join compania_vuelo as cv on es.id_vuelo = cv.id_vuelo
join compania as co on cv.id_compania = co.id_compania
WHERE s.ano > EXTRACT (YEAR FROM CURRENT_DATE) - 10
GROUP BY co.nombre, s.monto
ORDER BY co.nombre DESC) AS r1
GROUP BY nombre
ORDER BY sum DESC;
