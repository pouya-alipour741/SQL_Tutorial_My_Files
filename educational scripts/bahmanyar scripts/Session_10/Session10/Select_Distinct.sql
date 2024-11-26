--Use DISTINCT:
--Omit repetitive Records
GO
USE AdventureWorks2014
GO
SELECT FirstName,LastName 
FROM Person.Person
ORDER BY FirstName
GO
SELECT FirstName 
FROM Person.Person
ORDER BY FirstName
GO
SELECT DISTINCT FirstName,LastName 
FROM Person.Person
ORDER BY FirstName
GO
SELECT DISTINCT FirstName,LastName 
FROM Person.Person
ORDER BY FirstName
GO