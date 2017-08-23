-- Term Project PartD.D3
CREATE PROCEDURE sp_products
(
	@ProductName	nvarchar(40),
	@Month			VARCHAR(20),
	@Year			int
)
AS
SELECT p.ProductName	AS ProductName,
	   p.UnitPrice		AS UnitPrice,
	   p.UnitsInStock	AS UnitInStock,
	   s.Name			AS Name
FROM Products p
INNER JOIN Suppliers s		ON p.SupplierID = s.SupplierID
INNER JOIN OrderDetails od	ON p.ProductID = od.ProductID
INNER JOIN Orders o			ON od.OrderID = o.OrderID
WHERE p.ProductName LIKE @ProductName
  AND DATENAME(MONTH,o.OrderDate) LIKE @Month
  AND YEAR(o.OrderDate) = @Year
GO