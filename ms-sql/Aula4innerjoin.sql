
--CREATE DATABASE AulaJoin

--USE AulaJoin

CREATE TABLE A (
ID int,
NOME VARCHAR (10)
);

CREATE TABLE B (
ID int,
NOME VARCHAR (10)
);

INSERT INTO A (ID, NOME)
VALUES (1, 'Robo');

INSERT INTO A (ID, NOME)
VALUES (2, 'Macaco');

INSERT INTO A (ID, NOME)
VALUES (3, 'Robo');

INSERT INTO A (ID, NOME)
VALUES (4, 'Monitor');

INSERT INTO B (ID, NOME)
VALUES (1, 'Espada');

INSERT INTO B (ID, NOME)
VALUES (2, 'Robo');

INSERT INTO B (ID, NOME)
VALUES (3, 'Mario');

INSERT INTO B (ID, NOME)
VALUES (4, 'Sumarai');

SELECT * FROM A	
SELECT * FROM B

SELECT * FROM A
INNER JOIN B ON A.NOME = B.NOME

SELECT * FROM A
FULL OUTER JOIN B
ON A.NOME = B.NOME

SELECT * FROM A 
LEFT JOIN B 
ON A.NOME = B.NOME

SELECT * FROM A 
RIGHT JOIN B 
ON A.NOME = B.NOME 
WHERE B.NOME IS NULL


SELECT ProductID, NAME, ProductNumber FROM Production.Product
WHERE NAME LIKE '%CHAI%'
UNION
SELECT ProductID, NAME, ProductNumber FROM Production.Product
WHERE NAME LIKE '%DECAL%'
ORDER BY NAME DESC



-- PERSON.PERSON / EMAILADDRESS
-- ID, FIRSTNAME, LASTNAME, EMAIL

SELECT P.BusinessEntityID, P.FirstName, P.LastName, PE.EmailAddress, HR.JobTitle 
FROM Person.Person P
INNER JOIN Person.EmailAddress PE
ON P.BusinessEntityID = PE.BusinessEntityID
INNER JOIN HumanResources.Employee HR
ON P.BusinessEntityID = HR.BusinessEntityID
WHERE HR.JobTitle LIKE '%DESI%'


-- NOME DOS PRODUTOS E AS INFORMAÇÕES DE SUBCATEGORIA
-- LISTPRICE, NAME, NOME SUBCATEGORIA
-- PRODUCT / PRODUCTSUBCATEGORY
SELECT A.NAME, A.ListPrice, B.Name FROM Production.Product A
INNER JOIN Production.ProductSubcategory B
ON A.ProductSubcategoryID = B.ProductSubcategoryID

--- TRAZER O CLIENTE ID, TIPO DE TELEFONE, O ID O TELEFONE, O NUMERO DO TELEFONE
-- PERSONPHONE E PHONENUMBERTYPE
SELECT A.BusinessEntityID, A.PhoneNumber, B.NAME, B.PhoneNumberTypeID, C.FirstName, C.LastName
FROM Person.PersonPhone A
INNER JOIN Person.PhoneNumberType B
ON A.PhoneNumberTypeID = B.PhoneNumberTypeID
INNER JOIN Person.Person C ON C.BusinessEntityID = A.BusinessEntityID

-- PRECISO DAS PESSOAS QUE TEM O CARTÃO DE CREDITO REGISTRADO
-- ID, NOME, E-MAIL
-- PRECISO DAS PESSOAS QUE NÃO TEM UM CARTÃO DE CREDITO REGISTRADO
--PERSON.PEROSN PERSON.EMAILADDRESS SALES.PERSONCREDITCARD
SELECT A.BusinessEntityID, A.FirstName, A.LastName, B.CreditCardID, C.EmailAddress
FROM Person.Person A
INNER JOIN Sales.PersonCreditCard B
ON A.BusinessEntityID = B.BusinessEntityID
INNER JOIN Person.EmailAddress C
ON A.BusinessEntityID = C.BusinessEntityID

SELECT A.BusinessEntityID, A.FirstName, A.LastName, B.CreditCardID,C.EmailAddress 
FROM Person.Person A
LEFT JOIN Sales.PersonCreditCard B ON B.BusinessEntityID =  A.BusinessEntityID
LEFT JOIN Person.EmailAddress C ON C.BusinessEntityID = A.BusinessEntityID
WHERE B.CreditCardID IS NULL
AND C.EmailAddress IS NOT NULL


SELECT * FROM Production.Product ORDER BY ListPrice DESC

SELECT AVG(ListPrice) AS MEDIA FROM Production.Product

SELECT ProductID, ListPrice FROM Production.Product
WHERE ListPrice > 438.6662

SELECT ProductID, ListPrice FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) AS MEDIA FROM Production.Product)


-- NOME DOS FUNCIONARIOS QUE SÃO DESIGN ENGINEER

SELECT * FROM Person.Person

SELECT * FROM HumanResources.Employee
WHERE JobTitle = 'DESIGN ENGINEER'

SELECT FirstName FROM Person.Person
WHERE BusinessEntityID IN (5,6,15)

SELECT FirstName 
FROM Person.Person
WHERE BusinessEntityID IN (SELECT BusinessEntityID FROM HumanResources.Employee
WHERE JobTitle = 'DESIGN ENGINEER')


SELECT A.FirstName, B.JobTitle FROM Person.Person A
INNER JOIN HumanResources.Employee B
ON A.BusinessEntityID = B.BusinessEntityID
WHERE JobTitle = 'DESIGN ENGINEER'
