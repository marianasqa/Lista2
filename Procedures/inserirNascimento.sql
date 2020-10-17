CREATE PROCEDURE inserirNascimento
	@COD_CLI INT,
	@NOME VARCHAR(100),
	@NAsCIMENTO DATETIME,
	@ENDERECO VARCHAR(100),
	@TELEFONE VARCHAR(11),
	@EMAIL VARCHAR(100)
AS
BEGIN

	IF (@NASCIMENTO >= '1993/10/13')

	BEGIN
		INSERT INTO CLIENTES (COD_CLI, NOME, NASCIMENTO, ENDERECO, TELEFONE, EMAIL) 
		VALUES (@COD_CLI, @NOME, @NASCIMENTO, @ENDERECO, @TELEFONE, @EMAIL)
	END
	ELSE
	BEGIN
		PRINT ("Data invalida")


EXEC inserirNascimento '5', 'Mariana', '2001-05-15', 'Avenida Mario', '981311034', 'marianasqa@gmail.com'
EXEC inserirNascimento '6', 'Valery', '2000-07-02', 'Avenida do Dia', '988112356', 'valerystevanin@gmail.com'

