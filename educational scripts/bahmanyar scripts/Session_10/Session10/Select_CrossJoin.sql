
USE NORTHWND
GO
SELECT c.CompanyName,c.ContactName
FROM dbo.Customers c 
GO
SELECT p.ProductName
FROM  dbo.Products p
GO
--CROSS JOIN of Two Tables:
SELECT c.CompanyName,c.ContactName,p.ProductName
FROM dbo.Customers c CROSS JOIN dbo.Products p
GO

--CROSS JOIN of Three Tables:
SELECT c.CompanyName,c.ContactName,p.ProductName,ca.CategoryName
FROM dbo.Customers c CROSS JOIN 
						dbo.Products p CROSS JOIN 
											dbo.Categories ca
GO


