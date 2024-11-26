use [SofiaCarRental_v2.2]
GO
select isnull(c.Make+''+c.Model,'~') as 'FullName',
		isnull(sum(r.Days),0) as [Rented Days]
from Cars c inner join RentalOrders r
on c.CarID = r.CarRef
group by c.Make, c.Model
having sum(r.Days) >=3
order by c.Make desc
GO
