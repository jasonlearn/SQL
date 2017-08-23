-- Term Project PartC.C2
CREATE VIEW vw_employee_info
AS
SELECT EmployeeID					AS EmployeeID,
	   (FirstName + ' ' + LastName)	AS Name,
	   BirthDate					AS BirthDate
FROM Employees