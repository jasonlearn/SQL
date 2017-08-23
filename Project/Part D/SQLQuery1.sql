-- Term Project PartD.D1
CREATE PROCEDURE sp_emp_info
(	@EmployeeID		int				OUTPUT	)
AS
SELECT EmployeeID			AS EmployeeID,
	   LastName				AS LastName,	
	   FirstName			AS FirstName,
	   Phone				AS Phone
FROM Employees
WHERE EmployeeID = @EmployeeID
GO