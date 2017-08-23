-- Term Project PartC.C1
CREATE VIEW vw_supplier_items
AS
SELECT DISTINCT
	   s.SupplierID			AS SupplierID,
	   s.Name				AS Name,
	   p.ProductID			AS ProductID,
	   p.ProductName		AS ProductName
FROM Suppliers s
INNER JOIN Products p ON s.SupplierID = p.SupplierID