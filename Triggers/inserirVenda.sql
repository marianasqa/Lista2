CREATE TRIGGER inserirVenda
ON VENDAS
AFTER INSERT AS 
BEGIN
	DECLARE @COD_VENDA INT, @TOTAL FLOAT

	SELECT @COD_VENDA = COD_VENDA, @TOTAL = TOTAL FROM INSERTED;

	IF(@TOTAL > 0)
	BEGIN
		INSERT INTO VENDAS VALUES (@COD_VENDA, @TOTAL);
	END
	ELSE
	BEGIN
		PRINT('Venda com valor menor ou igual a 0')
	END
END

INSERT INTO VENDAS
(
	COD_VENDA, DATA_HORA, TOTAL, IDFK_CLIENTE
)
VALUES
(
	'15', '2020-10-14', '115.00')