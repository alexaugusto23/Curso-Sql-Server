-- SQL ANSI (Funciona em Qualquer SGBD)

-- Selecionar BD.
USE SisDep;

-- Todas Colunas de uma Tabela
SELECT * FROM Funcionario;

-- Somente algumas colunas
SELECT idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario;

-- Ordena��o de dados ex1
SELECT idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY NomeFuncionario ASC;

-- Ordena��o de dados ex2
SELECT idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY Salario DESC;

-- Ordena��o de dados com mais de uma coluna ex3
SELECT idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY idDepartamento ASC, Salario DESC;

-- Ordena��o de dados pela posi��o ex4
SELECT idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY 1 ASC, 5 DESC;

-- Rank TOP
-- 20 primeiras linhas da tabela
SELECT TOP 20 idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario

-- 10 % de Registros
SELECT TOP 10 PERCENT idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario;

-- 10 Maiores Sal�rios
SELECT TOP 10 idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY Salario DESC;

SELECT TOP 9 idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY Salario DESC;

-- Com Empates
SELECT TOP 9 WITH TIES idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY Salario DESC;

-- Retornar os 5 funcion�rios mais antigos
SELECT TOP 5 WITH TIES idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY Admissao ASC;
