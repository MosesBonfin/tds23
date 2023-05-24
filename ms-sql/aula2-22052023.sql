--USE pubs
SELECT * FROM sys.tables
    SELECT * FROM dbo.authors

SELECT au_fname,
	   phone
FROM dbo.authors ORDER BY au_fname DESC

SELECT TOP 5 ord_num, qty 
FROM dbo.sales
ORDER BY qty DESC



SELECT * FROM dbo.authors
WHERE state = 'CA'
AND  contract = 0
ORDER BY city

SELECT SUM(qty) AS 'VENDAS TOTAIS'
FROM dbo.sales

SELECT au_id, au_lname,au_fname, phone, address, city,state,zip,contract FROM
authors WHERE city = 'Berkeley'

SELECT au_id,au_lname, au_fname, phone, address, city, state, zip, contract FROM
authors WHERE city = 'Oakland' AND contract = 1

SELECT au_id, au_lname, au_fname, phone, address, city, state, zip, contract FROM
authors WHERE au_fname LIKE 'a%'

SELECT authors.*, titleauthor.* FROM authors,titleauthor WHERE authors.au_id =
titleauthor.au_id

SELECT authors.*, titleauthor.* FROM authors,titleauthor WHERE authors.au_id =
titleauthor.au_id

UPDATE authors SET au_fname = 'Marina' WHERE au_id='846-92-7186'

SELECT * FROM dbo.authors

