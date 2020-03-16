/*
Bloco de 
comentário
*/
-- Comentário de única linha
/*
Criando um Banco de Dados
Autor: Alexsandro Augusto Ignácio
Data: 01/03/20
*/

-- Criando um Banco de Dados via T-SQL.
CREATE DATABASE DepartamentoPessoal;

-- Colocando um Banco de Dado em Uso.
USE DepartamentoPessoal;

--Excluir um Banco de dados.
--o mesmo não poderá estar em uso.
-- Necessário sair do BD atual e ir para outro.
USE master;
DROP DATABASE DepartamentoPessoal; 