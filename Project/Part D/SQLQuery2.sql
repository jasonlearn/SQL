-- Term Project PartD.D2
CREATE PROCEDURE sp_orders_by_dates
(
	@StartDate	date,
	@EndDate	date
)
AS
SELECT o.OrderID		AS OrderID,
	   o.CustomerID		AS CustomerID,
	   c.CompanyName	AS CompanyName,
	   s.CompanyName	AS ShipperName,
	   o.ShippedDate	AS ShippedDate
FROM Orders o
INNER JOIN Customers c		ON o.CustomerID = c.CustomerID
INNER JOIN Shippers s		ON o.ShipperID = s.ShipperID
WHERE o.ShippedDate BETWEEN @StartDate AND @EndDate
GO