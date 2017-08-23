-- Term Project PartD.D4
CREATE PROCEDURE sp_unit_prices
(
	@FirstValue		money,
	@SecondValue	money
)
AS
SELECT ProductID,
	   ProductName,
	   EnglishName,
	   UnitPrice
FROM Products
WHERE UnitPrice BETWEEN @FirstValue AND @SecondValue
GO