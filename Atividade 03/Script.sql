-- Questão 01

create database letscode

create database letscode_del

-- Questão 02

alter database letscode rename to turma889

-- Questão 03

drop database letscode_del

-- Questão 04

create table alunos (
	id_aluno	integer,			
	matricula	varchar,
	nome		varchar,
	estado		varchar,
	formacao	varchar
)

-- Questão 05

alter table alunos rename column estado to uf

-- Questão 06

alter table alunos add column email varchar

alter table alunos add column telefone varchar

-- Questão 07

alter table alunos alter column email type varchar(100)

-- Questão 08

alter table alunos drop column id_aluno

-- Questão 09

drop table if exists alunos

-- Questão 10

A coluna matrícula, pois será um valor único.

-- Questão 11

Falso

-- Questão 12

Verdadeiro

-- Questão 13

Falso

-- Questão 14

create table

-- Questão 15

drop database

-- Questão 16

Verdadeiro