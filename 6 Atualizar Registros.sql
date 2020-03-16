USE Sisdep;

SELECT * FROM Funcionario

-- Bônus de R$ 100,00 para todos os funcioários
UPDATE Funcionario
SET Salario = Salario + 300;

-- Reajustede 10% para todos os funvionários
UPDATE Funcionario
-- SET Salario = Salario * 0.1 + Salario;
-- SET Salario = Salario * 1.1;
-- Operador Composto
SET Salario *= 1.1;

-- Atualização de mais de uma coluna simultaneamente
UPDATE Funcionario
SET Salario = Salario * 1.05,idCargo = 2
WHERE idMatricula = 1000;
-- where é um filtro
