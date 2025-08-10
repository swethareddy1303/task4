
-- INNER JOIN Example
SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.OrderDate
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- LEFT JOIN Example
SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.OrderDate
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- RIGHT JOIN Example
SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.OrderDate
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- FULL OUTER JOIN Example
SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.OrderDate
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- CROSS JOIN Example
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
CROSS JOIN Orders;

-- SELF JOIN Example
SELECT A.CustomerName AS Customer1, B.CustomerName AS Customer2, A.City
FROM Customers A, Customers B
WHERE A.City = B.City AND A.CustomerID <> B.CustomerID;

-- AGGREGATE FUNCTIONS

-- COUNT
SELECT COUNT(*) AS TotalOrders FROM Orders;

-- SUM
SELECT SUM(OrderAmount) AS TotalRevenue FROM Orders;

-- AVG
SELECT AVG(OrderAmount) AS AverageOrderValue FROM Orders;

-- MIN
SELECT MIN(OrderAmount) AS SmallestOrder FROM Orders;

-- MAX
SELECT MAX(OrderAmount) AS LargestOrder FROM Orders;

-- GROUP BY Example
SELECT CustomerID, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerID;

-- HAVING Example
SELECT CustomerID, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*) > 5;

-- ORDER BY Example
SELECT * FROM Orders
ORDER BY OrderAmount DESC;
