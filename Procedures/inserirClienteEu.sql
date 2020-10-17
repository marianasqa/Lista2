CREATE PROCEDURE inserirClienteEu
	@COD_CLI INT ,
	@NOME VARCHAR(100),
	@NASCIMENTO DATETIME ,
	@ENDERECO VARCHAR(100),
	@TELEFONE VARCHAR(11),
	@EMAIL VARCHAR(100)
AS 
BEGIN 

DECLARE @CLIENTE_EU VARCHAR(50);

IF (@NOME LIKE '%eu')

BEGIN
INSERT INTO CLIENTES (COD_CLI, NOME, NASCIMENTO, ENDERECO, TELEFONE, EMAIL)
VALUES  (@COD_CLI, @NOME, @NASCIMENTO, @ENDERECO, @TELEFONE, @EMAIL)

END

SET @NOME = @CLIENTE_EU;

SELECT @CLIENTE_EU

END

EXEC inserirClienteEu '25', 'Pompeu', '1999-05-15', 'Rua Mario', '981567845', 'pompeu123@hotmail.com'
EXEC inserirClienteEu '26', 'Joao', '2000-08-05', 'Rua barbosa', '987874545', 'joaozinho450@outlook.com'