select * from florestas

-- Questão 01

select municipio from florestas 
intersect
select municipio from florestas where area_ha > 200000
order by municipio 

-- Questão 02

select municipio, estado_sigla from florestas 
intersect
select municipio, estado_sigla from florestas where area_ha > 150000
order by municipio 

-- Questão 03

ANULADA

-- Questão 04

select municipio, especie from florestas 
intersect
select municipio, especie from florestas where area_ha > 30000 and estado = 'Bahia'
order by municipio

-- Questão 05

-- criando a view
create view vw_florestas as (
select * from florestas
)

-- consultando a view (tempo 0ms)
select * from vw_florestas

-- consulta normal (tempo 1ms)
select * from florestas

-------------------------------

-- criando a view materializada
create materialized view vwm_florestas as (
select * from florestas
)

-- consultando a view materializada (tempo 1ms)
select * from vwm_florestas

-- consulta normal (tempo 1ms)
select * from florestas