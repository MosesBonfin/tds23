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
