-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT ProductName, CategoryName from product as p join category as c on p.categoryid = c.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT id, orderdate, CompanyName 
FROM [Order] AS o
JOIN shipper AS sh ON o.shipvia = sh.id
WHERE o.orderdate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select ProductName, Quantity from orderdetail as od
join Product as pr
on od.productid = pr.id
where orderid = '10251'
group by productname;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT ord.ID, c.CompanyName AS CustomerCompanyName, e.LastName AS EmployeeLastName
FROM [Order] AS ord
JOIN customer AS c ON ord.customerid = c.id
JOIN employee AS e ON ord.employeeid = e.id;