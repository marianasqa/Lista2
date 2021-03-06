CREATE DATABASE Loja

CREATE TABLE CLIENTES(
	COD_CLI INT NOT NULL,
	NOME VARCHAR(100) NOT NULL,
	NASCIMENTO DATETIME NOT NULL,
	ENDERECO VARCHAR(100) NOT NULL,
	TELEFONE VARCHAR(11) NOT NULL,
	EMAIL VARCHAR(100)
);

ALTER TABLE CLIENTES ADD CONSTRAINT PK_CLI PRIMARY KEY(COD_CLI)

CREATE TABLE VENDAS(
	COD_VENDA INT NOT NULL,
	DATA_HORA DATETIME NOT NULL,
	TOTAL FLOAT NOT NULL
)

ALTER TABLE VENDAS ADD CONSTRAINT PK_VENDA PRIMARY KEY(COD_VENDA)
ALTER TABLE VENDAS ADD IDFK_CLIENTE INT NOT NULL
ALTER TABLE VENDAS ADD CONSTRAINT FK_VENDA_CLIENTE FOREIGN KEY(IDFK_CLIENTE) REFERENCES CLIENTES(COD_CLI)

CREATE TABLE ITENS_VENDA(
	QUANTIDADE INT NOT NULL,
	SUB_TOTAL FLOAT NOT NULL
)

ALTER TABLE ITENS_VENDA ADD IDFK_VENDA INT NOT NULL
ALTER TABLE ITENS_VENDA ADD CONSTRAINT FK_ITENS_VENDA FOREIGN KEY(IDFK_VENDA) REFERENCES VENDAS(COD_VENDA)

ALTER TABLE ITENS_VENDA ADD IDFK_PRODUTOS INT NOT NULL
ALTER TABLE ITENS_VENDA ADD CONSTRAINT FK_ITENS_PRODUTOS FOREIGN KEY (IDFK_PRODUTOS) REFERENCES PRODUTOS(COD_PROD)
 
CREATE TABLE PRODUTOS(
	COD_PROD INT NOT NULL,
	PRECO_VENDA FLOAT NOT NULL,
	DESCRICAO VARCHAR(100) NOT NULL,
	DATA_VALIDADE DATETIME NOT NULL,
	PRECO_CUSTO FLOAT NOT NULL,
	ESTOQUE VARCHAR(100) NOT NULL
)

ALTER TABLE PRODUTOS ADD CONSTRAINT PK_PROD PRIMARY KEY(COD_PROD)
ALTER TABLE PRODUTOS ADD IDFK_DISTRIBUIDOR INT NOT NULL
ALTER TABLE PRODUTOS ADD CONSTRAINT FK_PRODUTOS_DISTRIBUIDOR FOREIGN KEY(IDFK_DISTRIBUIDOR) REFERENCES DISTRIBUIDORES(COD_DIST)


CREATE TABLE DISTRIBUIDORES(
	COD_DIST INT NOT NULL,
	NOME_FANTASIA VARCHAR(100) NOT NULL,
	RAZAO_SOCIAL VARCHAR(100) NOT NULL,
	TELEFONE VARCHAR(100) NOT NULL,
	EMAIL VARCHAR(100)
)

ALTER TABLE DISTRIBUIDORES ADD CONSTRAINT PK_DIST PRIMARY KEY(COD_DIST)




SELECT * FROM CLIENTES
SELECT * FROM VENDAS
SELECT * FROM ITENS_VENDA
SELECT * FROM DISTRIBUIDORES
SELECT * FROM PRODUTOS

USE Loja