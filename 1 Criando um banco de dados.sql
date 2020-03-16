/*
Bloco de 
coment�rio
*/
-- Coment�rio de �nica linha
/*
Criando um Banco de Dados
Autor: Alexsandro Augusto Ign�cio
Data: 01/03/20
*/

-- Criando um Banco de Dados via T-SQL.
CREATE DATABASE DepartamentoPessoal;

-- Colocando um Banco de Dado em Uso.
USE DepartamentoPessoal;

--Excluir um Banco de dados.
--o mesmo n�o poder� estar em uso.
-- Necess�rio sair do BD atual e ir para outro.
USE master;
DROP DATABASE DepartamentoPessoal; 