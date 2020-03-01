
-- Comando para navegar até o database
use Concessionaria

-- Seleciona a tabela funcionarios 

select * from TblFuncionarios

-- Comando para selicionar divesas colunas e 1000 linhas

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Matricula]
      ,[NomeFuncionario]
      ,[Admissao]
      ,[Salario]
  FROM [Concessionaria].[dbo].[TblFuncionarios]

-- Comando para excluir tabelas ou database

drop table TblFuncionarios 

-- Comando para criar tabelas

create table TblFuncionarios (
Matricula int primary key not null,
NomeFuncionario varchar(50) not null,
Admissao date null,
Salario money null
);

-- Altera a tabela

alter table TblFuncionarios
	add Matricula int primary key;


-- inserção de multipas linhas com comando insert
insert into TblFuncionarios (Matricula,NomeFuncionario,Admissao,Salario) 
values 
(1004, 'Jon','2001-01-22',250),
(1005, 'Roberto','2011-03-28',5050),
(1006, 'Maria dark','2018-02-02',265)

-- inserção uma linha com comando insert
insert into TblFuncionarios (Matricula,NomeFuncionario,Admissao,Salario) 
values (1004, 'Jon','2001-01-22',250),




