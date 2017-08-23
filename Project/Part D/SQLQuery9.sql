-- Term Project PartD.D9
CREATE TRIGGER tr_check_qty
ON OrderDetails
FOR UPDATE
AS
DECLARE		@Qty			int
DECLARE		@UnitsInStock	int
SELECT		@Qty = Quantity FROM INSERTED
SELECT		@UnitsInStock = p.UnitsInStock
FROM INSERTED i
INNER JOIN products p ON i.ProductID = p.ProductID
IF(@Qty > @UnitsInStock)
	BEGIN
		PRINT ('Units In Stock is insufficient for the order quantity. Please enter a new Quantity.')
		ROLLBACK TRANSACTION
	END