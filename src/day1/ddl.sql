
CREATE DATABASE LearningSQL;
GO

USE LearningSQL;
GO

CREATE SCHEMA HR;
GO

CREATE TABLE HR.Employees
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50) NOT NULL,
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);
GO

CREATE TABLE dbo.Students
(
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Age INT,
    City VARCHAR(50)
);
GO

ALTER TABLE dbo.Students
ADD Email VARCHAR(100);
GO

CREATE VIEW StudentView
AS
SELECT StudentID, StudentName, City
FROM dbo.Students;
GO

CREATE INDEX idx_StudentName
ON dbo.Students(StudentName);
GO

EXEC sp_rename 'dbo.Students.Email', 'StudentEmail', 'COLUMN';
GO
