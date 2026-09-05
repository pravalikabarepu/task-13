create database northwind;
show databases;
### Query-1 Customers and orders using inner join
select
c.CustomerID,
c.CompanyName,
o.OrderID,
o.OrderDate
from categories c
inner join Orders o
on c.CustomerID=o.CustomerID;
### Query-2 Customers and Orders using left join
select
c.CustomerID,
c.CompanyName,
o.OrderID,
o.OrderDate
from categories c
left join Orders o
on c.CustomerID=o.CustomerID;
### Query-3 Find customers with no orders
select
c.CustomerID,
c.CompanyName
from Categories c
left join Orders o
on c.CustomerID= o.CustomerID
where o.OrderID is null;
### Query-4 Orders with Customer Details
select
o.OrderID,
o.OrderDate,
c.CustomerID,
c.CompanyName,
c.Country
from orders o
inner join categories c 
on o.CustomerID=c.CustomerID;
### Query-5 Orders with employee details
select
o.OrderID,
o.OrderDate,
e.EmployeeID,
e.FirstName,
e.LastName
from orders o
inner join employee e
on o.EmployeeID=e.EmployeeID;
### Query-6 Employees and their orders using left join
select
e.EmployeeID,
e.FirstName,
e.LastName,
o.OrderID,
o.OrderDate
from Employee e
left join orders o
on e.EmployeeID=o.EmployeeID;
### Query-7 Find employees with no orders
select
e.EmployeeID,
e.FirstName,
e.LastName
from employee e
left join orders o
on e.EmployeeID=o.EmployeeID
where o.OrderID is null;
### Query-8 Products and categories
select
p.ProductID,
p.ProductName,
p.CategoryID,
d.`Category Name`
from products p
inner join category d
on p.CategoryID=d.`Category ID`;
### Query-9 Products and Suppliers
select
p.ProductID,
p.ProductName,
s.SupplierID,
s.CompanyName as SupplierName
from products p
inner join Suppliers s 
on p.SupplierID=s.SupplierID;
### Query-10 All products with categories using left join
select
p.ProductID,
p.ProductName,
c.`Category Name`
from products p
left join category c
on p.CategoryID=c.`Category ID`;
### Query-11 All products with suppliers usinf left join
select
p.ProductID,
p.ProductName,
s.CompanyName as SupplierName
from products p
left join suppliers s
on p.SupplierID=s.SupplierID;
### Query-12 CustomerID count
select
c.CustomerID,
c.CompanyName,
count(o.OrderID) as NumberOfOrders
from categories c
left join orders o
on c.CustomerID=o.CustomerID
group by
c.CustomerID,
c.CompanyName
order by NumberOfOrders desc;
### Query-13 Compare customers vs inner join rows
select
(select count(*) from categories) as TotalCustomers,
(
select Count(*) 
from categories c 
inner join orders o
on c.CustomerID=o.CustomerID
) as InnerJoinRows;
### Query-14 Count orders per customer and identify multiple matches
select
c.CustomerID,
c.CompanyName,
count(o.OrderID) as OrderCount
from categories c
inner join orders o
on c.CustomerID=o.CustomerID
group by
c.CustomerID,
c.CompanyName
having count(o.OrderID)>1
order by OrderCount desc;
### Query-15 three table inner join
select
o.OrderID,
o.OrderDate,
c.CompanyName,
e.FirstName,
e.LastName
from orders o
inner join categories c
on o.CustomerID=c.CustomerID
inner join employee e
on o.EmployeeID=e.EmployeeID
order by o.OrderDate;