-- Term Project PartD.D7
CREATE PROCEDURE sp_shipping_date
(
	@ShippedDate	date
)
AS
SELECT o.OrderID,
	   c.CompanyName							AS CustomerName,
	   s.CompanyName							AS ShipperName,
	   o.OrderDate,
	   CONVERT(datetime, @ShippedDate)			AS ShippedDate
FROM Orders o
INNER JOIN Customers c		ON o.CustomerID = c.CustomerID
INNER JOIN Shippers s		ON o.ShipperID = s.ShipperID
WHERE DATEADD(DAY, 10, o.orderDate) = @ShippedDate
GO