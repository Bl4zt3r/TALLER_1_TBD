-- Pregunta 9:listar la compañia que mejor paga a sus empleados 
-- en los ultimos 10 años
-- prmediar los sueldos de los trabajadores por aerolinea

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