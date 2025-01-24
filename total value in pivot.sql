drop table if exists #temp

begin
	select top 10 
		OrderDate, UnitPrice, Quantity, ShipCountry
	into #temp
	from [Order Details] od
	join Orders o on o.OrderID = od.OrderID
end


select top 10 * from(
	select 
		format(orderdate, 'MMM-dd') orderdate, (UnitPrice * Quantity) price, ShipCountry
		from #temp
) x
pivot(count(price) for ShipCountry in ([france],[germany])) pvt
union
select top 10 * from(
	select 
			'total' as orderdate, (UnitPrice * Quantity) price, ShipCountry
		from #temp
) x
pivot(count(price) for ShipCountry in ([france],[germany])) pvt
