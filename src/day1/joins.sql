USE LearningSQL;
GO

CREATE TABLE Departments
(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
GO

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    DepartmentID INT
);
GO

INSERT INTO Departments
VALUES
(1,'HR'),
(2,'IT'),
(3,'Finance');
GO

INSERT INTO Employees
VALUES
(101,'Rahul',1),
(102,'Priya',2),
(103,'Arun',2),
(104,'Vijay',NULL);
GO

-- INNER JOIN
SELECT *
FROM Employees E
INNER JOIN Departments D
ON E.DepartmentID=D.DepartmentID;
GO

-- LEFT JOIN
SELECT *
FROM Employees E
LEFT JOIN Departments D
ON E.DepartmentID=D.DepartmentID;
GO

-- RIGHT JOIN
SELECT *
FROM Employees E
RIGHT JOIN Departments D
ON E.DepartmentID=D.DepartmentID;
GO

-- FULL OUTER JOIN
SELECT *
FROM Employees E
FULL OUTER JOIN Departments D
ON E.DepartmentID=D.DepartmentID;
GO
