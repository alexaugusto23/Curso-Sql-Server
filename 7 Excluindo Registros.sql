-- Seliciona o Banco de Dados
USE Consorcio;

-- Seleciona a tabela
SELECT * FROM Carteiras;

-- Excluíndo Registros (Sem o fltro Where apenas
-- o comando delete from apaga todos os registros da tabela.
DELETE FROM Carteiras
WHERE Cpf = 74632202244;

DELETE FROM Carteiras
WHERE uf = 'GO';

-- Mudando de banco
USE SisDep;

-- Exclusão Bem Sucedida
DELETE FROM Funcionario
WHERE idMatricula = 1001;

-- Exclusão Mal Sucedida (ERRO)
DELETE FROM Funcionario
WHERE idMatricula = 1000;

SELECT * FROM Dependente
WHERE idMatricula = 1000;