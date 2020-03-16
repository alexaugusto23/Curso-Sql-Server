USE Concessionaria

-- Visualizando estrutura da tabela Procedure
EXEC sp_help tblMarcas;
EXEC sp_help tblModelos;

select * from tblModelos;
select * from tblMarcas;

-- Criando Tabelas
CREATE TABLE tblMarcas
(
	idMarca int identity primary key,
	nomeMarca nchar(10) not null unique,
); 


CREATE TABLE tblModelos
(
idModelo int identity
Constraint PK_tblModelos_idModelo 
Primary key (idModelo),

idMarca int not null
Constraint Fk_tblModelos_tblMarcas_idMarca 
Foreign key (idMarca)
References tblMarcas (idMarca),

nomeModelo nchar(30) not null
Constraint UQ_tblModelos_nomeModelo
Unique (nomeModelo)

);






