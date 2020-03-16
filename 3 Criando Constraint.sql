-- Colocando Data Base em uso
USE Concessionaria;

-- Selecionando Tabela
SELECT * FROM tblEstoque;

-- Cosultando dados da tabela
EXEC sp_help tblEstoque;

-- Criando Tabela
CREATE TABLE tblEstoque
(	
	-- Criando Chave Primária (Primary Key)
	idEstoque int identity
	Constraint PK_tblEstoque_idEstoque
	Primary Key (idEstoque),

	-- Criando Chave Estrangeira (Foreign Key)
	idModelo int not null
	--             tbl_de    tbl_para
	constraint FK_tblEstoque_tblModelos
	Foreign Key (idModelo)
	References tblModelos(idModelo),

	dataEntrada date Default GETDATE(),

	precoEstoque money not null
	Constraint Ck_tblEstoque_precoEstoque
	CHECK (precoEstoque >= 10000 AND precoEstoque <= 200000)
);

-- nova Coluna
ALTER TABLE tblEstoque
ADD placa nChar(8) not null;

-- Alterar o tamanho de uma coluna
ALTER TABLE tblEstoque
ALTER COLUMN placa nChar(7) Null;

-- Excluir Coluna
ALTER TABLE tblEstoque
DROP COLUMN placa;

-- Excluíndo uma Constraint
ALTER TABLE tblEstoque
DROP CONSTRAINT Ck_tblEstoque_precoEstoque;

--Criando uma constraint
ALTER TABLE tblEstoque
ADD CONSTRAINT Ck_tblEstoque_precoEstoque
CHECK (precoEstoque >= 10000 AND precoEstoque <= 200000);