-- BEGIN TRANSACTION OU  BEGIN TRAN
-- COMMIT TRANSACTION OU COMMIT TRAN OU COMMIT
-- ROLLBACK TRANSACTION OU ROLLBACK TRAN OU ROLLBACK 

-- Seleciona o banco
USE SeguroVeiculo;

-- Seleciona a tabela
SELECT * FROM Apolices;

-- Iniciar uma Transa��o
BEGIN TRANSACTION

-- Verificar se h� alguma transa��o ativa
SELECT @@TRANCOUNT;

-- Atualizar com transa��o ativa

UPDATE Apolices
SET valorApolice = valorApolice + 1500;

-- Cancelar um opera��o
ROLLBACK TRANSACTION;

-- Nova Transa��o
BEGIN TRAN
	UPDATE Apolices
	SET valorApolice = valorApolice + 1500
	WHERE nContrato = 1000;

-- Confirmar transa��o
COMMIT TRAN

-- Seleciona o banco
USE SisDep;

-- Nova Transa��o
BEGIN TRAN
	UPDATE Funcionario
	SET Salario = Salario * 1.1
	OUTPUT
		deleted.idMatricula,
		deleted.NomeFuncionario,
		deleted.Salario AS [Sal�rio Anterior],
		inserted.Salario AS [Novo Sal�rio]
	WHERE Salario <= 3000;

COMMIT