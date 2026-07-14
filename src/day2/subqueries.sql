USE SQL_Day3;
GO

SELECT *
FROM Employee
WHERE Salary=
(
    SELECT MAX(Salary)
    FROM Employee
);
GO

SELECT *
FROM Employee
WHERE DeptID IN
(
    SELECT DeptID
    FROM Department
    WHERE DeptName IN ('HR','IT')
);
GO

SELECT
E.EmpName,
E.DeptID,
E.Salary
FROM Employee E
INNER JOIN
(
    SELECT DeptID,
           MAX(Salary) AS MaxSalary
    FROM Employee
    GROUP BY DeptID
) M
ON E.DeptID=M.DeptID
AND E.Salary=M.MaxSalary;
GO

SELECT
EmpName,
Salary
FROM Employee E
WHERE Salary>
(
    SELECT AVG(Salary)
    FROM Employee
    WHERE DeptID=E.DeptID
);
GO