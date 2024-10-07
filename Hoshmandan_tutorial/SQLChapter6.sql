--sub query type 2
---مثال: گروه کالاهایی را لیست کنید که همه کالاهایشان گرانتر از 8 دلار باشند
--with sub query type 1
select c.CategoryID,c.CategoryName from Categories c
where (select min(unitprice) from Products 
		where categoryid= c.CategoryID)>8

--with sub query type 2
select c.CategoryID,c.CategoryName from Categories c
where 8< all(select unitprice from Products 
		where categoryid= c.CategoryID)

---مثال: کارمندانی را لیست کنید که هرگز تخفیف نداده اند
select e.employeeid,LastName from Employees e
where 0=all(select od.Discount from Orders o join [Order Details] od
			on o.OrderID=od.OrderID
			where e.EmployeeID=o.employeeid)

---مثال: کارمندانی را لیست کنید که هرگز به دانمارک فروش نداشتند
select e.employeeid,LastName from Employees e
where 'denmark'!=all(select country from customers c join orders o
		on c.CustomerID=o.CustomerID
		where o.EmployeeID=e.employeeid)

---any
---مثال: کارمندانی را لیست کنید که حداقل یکبار به دانمارک فروش داشتند
select e.employeeid,LastName from Employees e
where 'denmark'=any(select country from customers c join orders o
		on c.CustomerID=o.CustomerID
		where o.EmployeeID=e.employeeid)


---مثال: گروه کالاهایی را لیست کنید که حداقل یک کالا گران تر از 80 دلار داشته باشند
select categoryid, categoryname from Categories c
where 80<any(select unitprice from Products
			where CategoryID=c.CategoryID)

select categoryid, categoryname from Categories c
where 80<any(select unitprice from Products
			)


---مثال: کارمندانی را لیست کنید که به دانمارک فروش داشتند
select e.employeeid,LastName from Employees e
where exists(select * from customers c join orders o
		on c.CustomerID=o.CustomerID
		where o.EmployeeID=e.employeeid and
		c.Country='denmark')


---مثال: مشریانی را لیست کنید که هرگز از ما خرید نکرده اند
select * from customers c
where not exists(select orderid from orders
				where c.CustomerID=CustomerID)



----مثال: گروه کالاهایی را لیست کنید که حداقل یک کالا گرانتر از 80 دلار دارند
select categoryid, categoryname from Categories c
where exists(select unitprice from Products
			where CategoryID=c.CategoryID and
			Products.UnitPrice>80)

---مثال: کارمندانی را لیست کنید که به دانمارک فروش داشتند
select * from Employees e
where 'denmark' in (select c.Country from customers c join orders o
		on c.CustomerID=o.CustomerID
		where o.EmployeeID=e.employeeid)


select * from Employees e
where e.employeeid in (select o.employeeid from orders o join customers c
		on c.CustomerID=o.CustomerID
		where c.Country='Denmark')

---مثال: مشتریانی که هرگز از ما خریداری نکرده اند
select * from Customers c
where CustomerID not in(select distinct CustomerID from orders)  --distinct improve runtime here, no diff in result

---مثال: در کدام تاریخ ها ، کالای شماره 11 پر فروش ترین کالای شرکت از نظر تعداد فروش بوده است
select o.orderdate, max(od.Quantity) as order_quantity from orders o join [Order Details] od
on o.OrderID=od.OrderID
where 11=(select productid from Products p
			where p.ProductID=od.ProductID)
group by o.orderdate


--join 3 alt method
select o.orderdate, max(od.Quantity) as order_quantity from orders o join [Order Details] od
on o.OrderID=od.OrderID
join Products p on p.ProductID=od.ProductID
where p.ProductID=11
group by o.orderdate


---مثال: کدام مشتریان شرکت دو روز متوالی از ما خرید داشتند
select distinct CustomerID from orders o1
where CustomerID in (select CustomerID from orders o2
					where datediff(day,o1.OrderDate,o2.orderdate)=1 )

--modified above
select distinct CustomerID, e.LastName from orders o1 join Employees e on o1.EmployeeID=e.EmployeeID
where CustomerID in (select CustomerID from orders o2
					where datediff(day,o1.OrderDate,o2.orderdate)=1 )

