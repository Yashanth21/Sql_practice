USE SQL_Day3;
GO

WITH EmployeeCTE AS
(
    SELECT *
    FROM Employee
    WHERE Salary>50000
)
SELECT *
FROM EmployeeCTE;
GO

WITH EmployeeDetails AS
(
    SELECT
        E.EmpName,
        D.DeptName,
        E.Salary
    FROM Employee E
    INNER JOIN Department D
    ON E.DeptID=D.DeptID
)
SELECT *
FROM EmployeeDetails;
GO

WITH DepartmentCount AS
(
    SELECT
        DeptID,
        COUNT(*) AS TotalEmployees
    FROM Employee
    GROUP BY DeptID
)
SELECT *
FROM DepartmentCount;
GO