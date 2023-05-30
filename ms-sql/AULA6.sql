--use Feminicidio

select COR_PELE from Feminicidio_2015_2022


use AdventureWorks2012
SELECT * FROM Person.Person

SELECT FirstName,UPPER(FirstName) AS NOME, LastName, LOWER(LastName) AS SOBRENOME
FROM Person.Person

-- LENGHT - LEN

SELECT FirstName, LEN(FirstName) AS NOME FROM Person.Person
WHERE LEN(FirstName) <= 2


SELECT FirstName, SUBSTRING(FirstName, 2,1) AS PRIMEIRALETRA  FROM Person.Person
WHERE SUBSTRING(FirstName, 2,1) = '.'

SELECT FirstName, SUBSTRING(FirstName, 1,3) AS PRIMEIRALETRA  FROM Person.Person

SELECT ProductNumber, REPLACE(ProductNumber,'-','-2023-') AS MUDANCA FROM Production.Product

SELECT FirstName, MiddleName, LastName FROM Person.Person

CREATE OR ALTER VIEW NOMES AS
SELECT FirstName, MiddleName, LastName 
FROM Person.Person
WHERE Title = 'Ms.'

SELECT * FROM NOMES
ORDER BY 3 DESC


CREATE OR ALTER VIEW EMAILS AS
SELECT A.BusinessEntityID, A.FirstName, B.EmailAddress  FROM Person.Person A
INNER JOIN Person.EmailAddress B ON B.BusinessEntityID = A.BusinessEntityID

DROP VIEW NOMES
 DROP DATABASE Feminicidio


