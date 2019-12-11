select (e.firstName || ' ' || e.lastName) as SoldBy, 
    o.id, 
    o.CustomerId as Customer, 
    o.ShipCountry as ShippedTo,
    c.CompanyName as OrderedBy
from [order] as o
join employee as e
    on o.EmployeeId = e.id
join customer as c
    on o.CustomerId = c.id;



select o.id as OrderNumber, 
    p.ProductName, 
    od.Quantity, 
    p.UnitPrice, 
    * 
from [order] as o
join orderdetail as od
    on o.id = od.OrderId
join product as p
    on od.productId = p.id;


-- joining 4 tables together
select o.id as OrderNumber, 
    p.ProductName, 
    od.Quantity, 
    p.UnitPrice, 
    (od.Quantity * p.UnitPrice) as Total,
    s.CompanyName as SoldBy
from [Order] as o
join OrderDetail as od
    on o.id = od.OrderId
join Product as p
    on od.productId = p.id
join Supplier as s
    on s.id = p.SupplierId;


select distinct c.id, c.CompanyName
from customer as c
join [order] as o on c.id = o.customerId
order by c.id;

select c.id, c.companyName as Customer, o.Id
from customer as c
left join [order] as o on c.id = o.customerId
order by c.id;