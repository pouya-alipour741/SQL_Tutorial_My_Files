use NORTHWND
Go
--Left
CREATE VIEW dbo.uvw_CategoryProduct
AS
    Select c.CategoryName,p.ProductID
	from Categories c left join Products p
	on c.CategoryID=p.CategoryID
Go
CREATE VIEW dbo.uvw_ProductOrderDetail
AS
    Select p.ProductID,o.OrderID
	from  Products p inner join [Order Details] o
	on p.CategoryID=o.ProductID
Go
CREATE VIEW dbo.uvw_Ctegory_OrderDetail
AS
    Select cp.CategoryName,po.OrderID
	from  uvw_CategoryProduct cp left join uvw_ProductOrderDetail po
	on cp.ProductID=po.ProductID
Go
--Right
CREATE VIEW dbo.uvw_CustomerOrder
AS
    Select o.OrderID,c.CompanyName
	from  Orders o inner join Customers c
	on o.CustomerID=c.CustomerID
Go
CREATE VIEW dbo.uvw_OrderOrderDetail
AS
    Select o.OrderID
	from  Orders o inner join [Order Details] od
	on o.OrderID=od.OrderID
Go
