

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


SELECT s.nombre, COUNT(DISTINCT p.id_pasaje) AS cantidad_compras
FROM cliente c
JOIN cliente_vuelo cv ON c.rut = cv.rut
JOIN vuelo v ON cv.id_vuelo = v.id_vuelo
JOIN pasaje p ON v.id_vuelo = p.id_vuelo
JOIN seccion s ON p.id_seccion = s.id_seccion
WHERE c.nacionalidad = 'Argentino'
GROUP BY s.nombre
ORDER BY cantidad_compras DESC

