 use kcc

 create schema st
 alter schema st
 transfer dbo.Customers

 alter schema st
 transfer dbo.Order_product
 alter schema st
 transfer dbo.orders
 alter schema st
 transfer dbo.Product

 select * from st.Customers


 --chapter 5
 select Orderid, (select count(orderid) from st.orders) as order_count
 from st.orders
 group by orderid

