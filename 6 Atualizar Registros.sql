USE Sisdep;

SELECT * FROM Funcionario

-- B�nus de R$ 100,00 para todos os funcio�rios
UPDATE Funcionario
SET Salario = Salario + 300;

-- Reajustede 10% para todos os funvion�rios
UPDATE Funcionario
-- SET Salario = Salario * 0.1 + Salario;
-- SET Salario = Salario * 1.1;
-- Operador Composto
SET Salario *= 1.1;

-- Atualiza��o de mais de uma coluna simultaneamente
UPDATE Funcionario
SET Salario = Salario * 1.05,idCargo = 2
WHERE idMatricula = 1000;
-- where � um filtro
