-- Questão 01

create database cinema

create table filmes (
	id_filme	integer,
	nm_filme	varchar,
	categoria	varchar,
	duracao		integer,
	lancamento	date

)

-- Questão 02

insert into filmes values (6, 'Titanic', 'Drama', 160, '2000-01-01')

-- Questão 03

insert into filmes values
	(1, 'Como eu era antes de você', 'Drama', 110, '2016-06-16'),
	(2, 'Para sempre', 'Romance', 104, '2012-06-07'),
	(3, 'Arremessando alto', 'Drama', 117, '2022-06-03'),
	(4, 'King Richard: criando campeãs', 'Drama', 144, '2021-12-02'),
	(5, 'No ritmo do coração', 'Drama', 111, '2021-09-23')
	
-- Questão 04
	
delete from filmes where id_filme = 6

-- Questão 05

alter table filmes add column verificar boolean

update filmes set verificar = true where categoria = 'Drama'

-- Questão 06

select id_filme, nm_filme, categoria from filmes where id_filme <= 2 order by id_filme

-- Questão 07

select nm_filme from filmes where lancamento <= '2021-12-02' order by id_filme

-- Questão 08

select id_filme, nm_filme, categoria, duracao, lancamento from filmes where categoria = 'Romance'