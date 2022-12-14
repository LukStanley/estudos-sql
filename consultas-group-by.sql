SELECT ESTADO, SUM ([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] GROUP BY ESTADO

SELECT ESTADO, AVG ([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] GROUP BY ESTADO

SELECT EMBALAGEM, MAX ([PREÇO DE LISTA]) FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

SELECT EMBALAGEM, MIN ([PREÇO DE LISTA]) FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

SELECT EMBALAGEM, COUNT (*) FROM [TABELA DE PRODUTOS] GROUP BY EMBALAGEM

SELECT BAIRRO, SUM ([LIMITE DE CREDITO])FROM [TABELA DE CLIENTES] 
WHERE ESTADO = 'SP' GROUP BY BAIRRO

--Selecionamentos  mais específicos usando o Group by Sum, MAX, MIN, AVG, COUNT