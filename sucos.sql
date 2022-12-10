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

USE [SUCOS_VENDAS]
GO

SET ANSI_NULLS ON

GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TABELA DE PRODUTOS](
	[CODIGO DO PRODUTO] [varchar](20) NULL,
	[NOME DO PRODUTO] [varchar](150) NULL,
	[EMBALAGEM] [varchar](50) NULL,
	[TAMANHO] [varchar](50) NULL,
	[SABOR] [varchar](50) NULL,
	[PRECO DE LISTA] [smallmoney] NULL
) ON [PRIMARY]
GO

INSERT INTO [TABELA DE PRODUTOS]
([CODIGO DO PRODUTO],
[NOME DO PRODUTO],
EMBALAGEM,
TAMANHO,
SABOR,
[PRECO DE LISTA])
VALUES
('1040107',
 'Light - 350ml - Melância',
 'Lata',
 '350ml',
 'Melância',
 4.56)      


 --Alterando um dado de uma tabela

   update [TABELA DE PRODUTOS]
  set [EMBALAGEM] = 'Lata'
  where [CODIGO DO PRODUTO] = '1037797'

  --Deletando linhas da tabela

   delete from [TABELA DE PRODUTOS]
  where [CODIGO DO PRODUTO] = '1078680';

  --Alterando a coluna da tabela para "not null", e também criando uma Primary key(constraint)

  alter table [TABELA DE PRODUTOS]
add constraint pk_tabela_de_produtos
primary key clustered ([CODIGO DO PRODUTO])

alter table[TABELA DE PRODUTOS]
alter column [CODIGO DO PRODUTO]
varchar (20) not null;

--Selecionando somente um produto


  select * from [TABELA DE PRODUTOS] where [SABOR] = 'UVA';

