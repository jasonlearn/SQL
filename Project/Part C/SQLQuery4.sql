-- Term Project PartC.C4
CREATE VIEW vw_order_cost
AS
SELECT o.OrderID					AS OrderID,
	   o.OrderDate					AS OrderDate,
	   p.ProductID					AS ProductID,
	   c.CompanyName				AS CompanyName,
	   (od.Quantity * od.UnitPrice)	AS OrderCost
FROM Orders o
INNER JOIN OrderDetails od		ON o.OrderID = od.OrderID
INNER JOIN Products p			ON od.ProductID = p.ProductID
INNER JOIN Customers c			ON o.CustomerID = c.CustomerID