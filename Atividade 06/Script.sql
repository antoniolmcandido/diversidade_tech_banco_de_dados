-- Questao 01
select count (distinct(municipio)) as municipios_unicos from florestas

-- Questao 02
select sum (area_ha) as area_total from florestas

-- Questao 03
select especie, sum (area_ha) as area_ha_especie from florestas group by especie

-- Questao 04
select ano, sum (area_ha) as area_ha_ano from florestas group by ano

-- Questao 05
select ano, count (municipio) as municipios_ano from florestas group by ano

-- Questao 06
select ano, municipio, estado_sigla, area_ha, media_area_ha_uf, area_ha - media_area_ha_uf  as diferenca_area_ha_media 
from florestas left join (select estado_sigla, round(avg (area_ha)) as media_area_ha_uf from florestas group by estado_sigla)
as t on r.uf = t.uf;

-- Questão 07
select regiao, sum (area_ha) as total_area_ha_regiao, rank() over (order by sum(area_ha) desc) from florestas group by regiao