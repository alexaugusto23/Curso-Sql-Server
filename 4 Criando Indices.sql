USE Concessionaria;

-- Visualizar índices
EXEC sp_help tblEstoque;
EXEC sp_helpindex tblEstoque;

-- Criando o Índice
CREATE NONCLUSTERED INDEX IX_tblEstoque
ON tblEstoque(dataEntrada DESC);

-- Excluir um Índice
DROP INDEX IX_tblEstoque 
ON tblEstoque;