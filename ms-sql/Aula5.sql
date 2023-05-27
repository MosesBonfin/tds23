USE AdventureWorks2012

SELECT FirstName, Title, MiddleName FROM Person.Person
WHERE Title = 'Mr.'
UNION
SELECT FirstName, Title, MiddleName FROM Person.Person
WHERE MiddleName = 'A'
ORDER BY FirstName ASC

SELECT FirstName, Title, MiddleName FROM Person.Person
WHERE Title = 'Mr.'
AND MiddleName IS NOT NULL
UNION
SELECT FirstName, Title, MiddleName FROM Person.Person
WHERE MiddleName = 'A'
AND Title IS NOT NULL
ORDER BY FirstName ASC

--577

USE	Northwind

SELECT * FROM sys.tables

SELECT A.FirstName, A.HireDate, B.FirstName, B.HireDate 
FROM Employees A, Employees B
WHERE DATEPART(YEAR, A.HireDate) = DATEPART(YEAR, B.HireDate)


USE AdventureWorks2012

-- MOSTRA A MEDIA MENSAL DE VALORES VENDIDOS
-- SALES.SALESORDERHEADER

SELECT * FROM SALES.SalesOrderHeader
SELECT AVG(TotalDue) AS MEDIA, DATEPART(MONTH, OrderDate) AS MÊS
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, OrderDate)
ORDER BY 2

SELECT AVG(TotalDue) AS MEDIA, DATEPART(YEAR, OrderDate) AS ANO
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR, OrderDate)
ORDER BY 2

--QUAIS OS PRODUTOS ESTÃO ACIMA DA MEDIA DE VENDAS
-- PRODUCTION.PRODUCT - ID, LISTPRICE
-- SUB SELECT - PRODUCTION.PRODUCT

SELECT ProductID, ListPrice FROM Production.Product AS P
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product)
ORDER BY 2

--SELECT PP.ProductSubcategoryID, AVG(PP.ListPrice) AS MEDIA FROM Production.Product AS PP
--GROUP BY ProductSubcategoryID
--3915,9951