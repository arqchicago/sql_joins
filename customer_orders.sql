
-- joining three tables and extracting total quantity of products 
-- ordered that are greater than 50
SELECT customer.CustomerName, sum(details.Quantity) as quantity_orders
FROM Customers as customer 
     inner join Orders as orders on customer.CustomerID=orders.CustomerID
     inner join OrderDetails as details on orders.OrderID=details.OrderID
GROUP BY customer.CustomerName
HAVING quantity_orders>50;