-- Term Project PartD.D10
CREATE TRIGGER tr_insert_shippers
ON Shippers
INSTEAD OF INSERT
AS
BEGIN
	IF EXISTS
	(	SELECT * FROM Shippers s
		INNER JOIN INSERTED i ON i.CompanyName LIKE s.CompanyName )
		BEGIN
			PRINT 'Shipper already exists'
		END
	ELSE
		BEGIN
			INSERT INTO Shippers
			SELECT * FROM INSERTED i
		END
END