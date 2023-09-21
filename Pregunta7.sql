
create view v_pasaje1 as
select compania_vuelo.id_compania, monto
from pasaje
join compania_vuelo on pasaje.id_vuelo=compania_vuelo.id_vuelo
join costo on pasaje.id_costo=costo.id_costo
where EXTRACT(YEAR FROM pasaje.fechaPasaje) >= 2019 and EXTRACT(YEAR FROM pasaje.fechaPasaje)<2024;


create view v_avion as
select nombre_modelo, nombre_compania, avion.id_compania
from avion
join modelo on modelo.id_modelo= avion.id_modelo
join compania on compania.id_compania=avion.id_compania;


select v_avion.nombre_compania, v_avion.nombre_modelo , sum (monto) 
from V_avion
join v_pasaje1 on v_pasaje1.id_compania= v_avion.id_compania
group by v_avion.nombre_modelo , v_avion.nombre_compania, v_avion.id_compania
order by (v_avion.id_compania) asc; 
