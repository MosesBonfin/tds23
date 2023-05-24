use AdventureWorks2012

SELECT * FROM Person.Person
WHERE BusinessEntityID = 5
OR BusinessEntityID = 111
OR BusinessEntityID = 23

SELECT * FROM Production.Product
WHERE Weight > 500
AND Weight <= 700

SELECT * FROM Production.Product
WHERE Weight > 500
OR Weight <= 700

SELECT * FROM HumanResources.Employee
WHERE SalariedFlag = 1
AND MaritalStatus = 'M'
AND BirthDate <= '1983/01/01'

SELECT * FROM Person.Person
WHERE FirstName = 'Peter'
AND LastName = 'Krebs'

SELECT * FROM Person.EmailAddress
WHERE BusinessEntityID = 26

SELECT Person.FirstName, Person.Person.LastName, Person.EmailAddress.EmailAddress
FROM Person.Person,Person.EmailAddress
WHERE Person.BusinessEntityID = EmailAddress.BusinessEntityID
AND Person.BusinessEntityID = 26


SELECT * FROM Production.Product
SELECT COUNT(ProductID) AS 'QTDE DE PRODUTOS' FROM Production.Product

SELECT DISTINCT NAME FROM Production.Product

SELECT ListPrice FROM Production.Product
WHERE ListPrice >= 1000
AND ListPrice <= 1500

SELECT ListPrice FROM Production.Product
WHERE ListPrice BETWEEN 1000 AND 1500


SELECT * FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'


SELECT * FROM Person.Person
WHERE BusinessEntityID IN (5,11,23)

SELECT * FROM Person.Person
WHERE FirstName LIKE 'R%'

-- Qunatos produtos temos no BD acima de 1500 (preço)

SELECT StandardCost FROM Production.Product
WHERE StandardCost > 1500;

-- Quantas pessoas tem o sobrenome que começa com a letra P
SELECT COUNT(LastName) FROM Person.Person
WHERE LastName LIKE 'P%'

-- em quantas cidades unicas estao as pessoas/clientes
SELECT count (DISTINCT City )  FROM Person.Address


/*
AND - E
OR - OU
NOT - ACOMPANHADO
=
>
<
<>
>=
<=
*/
