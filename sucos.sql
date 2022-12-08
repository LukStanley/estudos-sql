CREATE DATABASE [SUCOS_VENDAS]

--CPF do cliente
--O nome completo do cliente
--Endereço com Rua, bairro, cidade, estado e CEP
--Data de nascimento
--A idade
--Gênero
--O limite de crédito do cliente que ele pode comprar
--O volume minimo que ele pode comprar
--Se ele ja realizou a primeira compra

CREATE TABLE [TABELA DE CLIENTES]
([CPF] [CHAR] (11),
[NOME] [VARCHAR](100),
[ENDERECO1] [VARCHAR](150),
[ENDERECO2] [VARCHAR](150),
[BAIRRO] [VARCHAR](50),
[CIDADE] [VARCHAR](50),
[ESTADO] [CHAR](2),
[CEP] [CHAR](8),
[DATA DE NASCIMENTO] [DATE],
[IDADE] [SMALLINT],
[SEXO] [CHAR] (1),
[LIMITE DE CREDITO] [MONEY],
[VOLUME DE COMPRA] [FLOAT],
[PRIMEIRA COMPRA] [BIT]);