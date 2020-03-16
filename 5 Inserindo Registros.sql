USE Concessionaria;

-- Visualizar dados
SELECT * FROM tblMarcas;
SELECT * FROM tblModelos;
SELECT * FROM tblEstoque;  

EXEC sp_help tblMarcas;

-- Insert Posicional
INSERT INTO tblMarcas
VALUES('FIAT');

-- Inserção de Várias Linhas
INSERT INTO tblMarcas
VALUES
('FORD'),('CHEVROLET'),('VOLKSWAGEN'),('HONDA');

--Insert Declarativo
INSERT INTO tblModelos
(idMarca,nomeModelo)
VALUES
(4,'ONIX'),(1,'UNO'),(3,'ECO SPORT');

--Insert Declarativo Multiplas tabelas
INSERT INTO tblEstoque
(idModelo, dataEntrada, precoEstoque)
VALUES
(1,'2017-01-05',199000);

--Deletando valores dos registros
DELETE FROM tblEstoque 
WHERE dataEntrada = ('2017-01-05');

-- Deleta toda linha
DELETE FROM tblEstoque;