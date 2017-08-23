-- Term Project PartD.D6
CREATE PROCEDURE sp_reorder_qty
(
	@UnitValue		int
)
AS
SELECT p.ProductID,
	   p.ProductName,
	   s.Name,
	   p.UnitsInStock,
	   p.ReorderLevel
FROM Products p
INNER JOIN Suppliers s		ON p.SupplierID = s.SupplierID
WHERE (p.UnitsInStock - p.ReorderLevel) < @UnitValue
GO