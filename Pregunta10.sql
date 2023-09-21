-- Pregunta 10
SELECT
    modelo.id_modelo,
    modelo.nombre_modelo AS nombre_modelo,
    COUNT(*) AS cantidad_utilizado
FROM
    avion_vuelo 
JOIN
    (SELECT DISTINCT compania_vuelo.id_vuelo
     FROM compania_vuelo 
     WHERE compania_vuelo.id_compania = 2) cv2
ON
    avion_vuelo.id_vuelo = cv2.id_vuelo
JOIN
    avion  ON avion_vuelo.patente = avion.patente
JOIN
    modelo  ON avion.id_modelo = modelo.id_modelo
JOIN
    vuelo  ON avion_vuelo.id_vuelo = vuelo.id_vuelo
JOIN
    pasaje  ON vuelo.id_vuelo = pasaje.id_vuelo
WHERE
    EXTRACT(YEAR FROM pasaje.fechaPasaje) = 2023
GROUP BY
    modelo.id_modelo, modelo.nombre_modelo
ORDER BY
    cantidad_utilizado DESC
LIMIT 1;