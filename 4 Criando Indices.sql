USE Concessionaria;

-- Visualizar �ndices
EXEC sp_help tblEstoque;
EXEC sp_helpindex tblEstoque;

-- Criando o �ndice
CREATE NONCLUSTERED INDEX IX_tblEstoque
ON tblEstoque(dataEntrada DESC);

-- Excluir um �ndice
DROP INDEX IX_tblEstoque 
ON tblEstoque;