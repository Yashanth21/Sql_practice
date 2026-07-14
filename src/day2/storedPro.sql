USE SQL_Day3;
GO

CREATE PROCEDURE GetAllEmployees
AS
BEGIN
    SELECT *
    FROM Employee;
END;
GO

EXEC GetAllEmployees;
GO

CREATE PROCEDURE GetEmployeeByID
    @EmpID INT
AS
BEGIN
    SELECT *
    FROM Employee
    WHERE EmpID=@EmpID;
END;
GO

EXEC GetEmployeeByID 2;
GO

ALTER PROCEDURE GetAllEmployees
AS
BEGIN
    SELECT
        EmpID,
        EmpName,
        Salary
    FROM Employee;
END;
GO

EXEC GetAllEmployees;
GO

DROP PROCEDURE GetEmployeeByID;
GO