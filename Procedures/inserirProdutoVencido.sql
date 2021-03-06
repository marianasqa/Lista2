CREATE PROCEDURE inserirProdutoVencido
	@COD_PROD INT ,
	@PRECO_VENDA FLOAT,
	@DESCRICAO VARCHAR(100),
	@DATA_VALIDADE DATETIME,
	@PRECO_CUSTO FLOAT,
	@ESTOQUE VARCHAR(100) 
AS
BEGIN

DECLARE @PRODUTO INT;

IF (@ESTOQUE >=1 AND @DATA_VALIDADE>CURRENT_TIMESTAMP)

BEGIN
INSERT INTO PRODUTOS(COD_PROD, PRECO_VENDA, DESCRICAO, DATA_VALIDADE, PRECO_CUSTO, ESTOQUE) 
VALUES (@COD_PROD, @PRECO_VENDA, @DESCRICAO, @DATA_VALIDADE, @PRECO_CUSTO, @ESTOQUE);

END

SET @ESTOQUE = @PRODUTO;

SELECT @PRODUTO

END

EXEC inserirProdutoVencido '013', '7.80', 'Miojo de Galinha', '2021-05-05', '6.50', '35'
EXEC inserirProdutoVencido '014', '21.95', 'Barra chocolate Milka', '2025-05-05', '20.50', '12'