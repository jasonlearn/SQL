-- Term Project PartD.D8
CREATE PROCEDURE sp_del_inactive_cust
AS
DELETE c
FROM Customers c
LEFT JOIN Orders o		ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL