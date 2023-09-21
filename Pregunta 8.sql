--Pregunta 8:listar compañias y aviones por año
--En los ultimos 10 años


SELECT co.nombre, EXTRACT (YEAR FROM fechafabricacion) as ano, COUNT(*) AS cantidad_aviones
FROM avion
join avion_vuelo as av on av.patente = avion.patente
join compania_vuelo as cv on cv.id_vuelo = av.id_vuelo
join compania co on co.id_compania = cv.id_compania
WHERE EXTRACT (YEAR FROM fechafabricacion) > EXTRACT (YEAR FROM CURRENT_DATE) - 10 
group by co.nombre, fechafabricacion