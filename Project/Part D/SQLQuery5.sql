-- Term Project PartD.D5
CREATE PROCEDURE sp_customer_city
(
	@City		VARCHAR(30)
)
AS
SELECT CustomerID, 
	   CompanyName,
	   Address,
	   City,
	   Phone
FROM Customers
WHERE City LIKE @City
GO