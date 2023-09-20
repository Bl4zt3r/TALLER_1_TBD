

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


