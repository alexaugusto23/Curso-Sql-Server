-- BEGIN TRANSACTION OU  BEGIN TRAN
-- COMMIT TRANSACTION OU COMMIT TRAN OU COMMIT
-- ROLLBACK TRANSACTION OU ROLLBACK TRAN OU ROLLBACK 

-- Seleciona o banco
USE SeguroVeiculo;

-- Seleciona a tabela
SELECT * FROM Apolices;

-- Iniciar uma Transação
BEGIN TRANSACTION

-- Verificar se há alguma transação ativa
SELECT @@TRANCOUNT;

-- Atualizar com transação ativa

UPDATE Apolices
SET valorApolice = valorApolice + 1500;

-- Cancelar um operação
ROLLBACK TRANSACTION;

-- Nova Transação
BEGIN TRAN
	UPDATE Apolices
	SET valorApolice = valorApolice + 1500
	WHERE nContrato = 1000;

-- Confirmar transação
COMMIT TRAN

-- Seleciona o banco
USE SisDep;

-- Nova Transação
BEGIN TRAN
	UPDATE Funcionario
	SET Salario = Salario * 1.1
	OUTPUT
		deleted.idMatricula,
		deleted.NomeFuncionario,
		deleted.Salario AS [Salário Anterior],
		inserted.Salario AS [Novo Salário]
	WHERE Salario <= 3000;

COMMIT