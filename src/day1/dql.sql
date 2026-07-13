USE LearningSQL;
GO

SELECT *
FROM dbo.Students;
GO

SELECT StudentName,City
FROM dbo.Students;
GO

SELECT *
FROM dbo.Students
WHERE Age > 20;
GO

SELECT *
FROM dbo.Students
ORDER BY Age DESC;
GO

SELECT DISTINCT City
FROM dbo.Students;
GO

SELECT COUNT(*) AS TotalStudents
FROM dbo.Students;
GO

SELECT AVG(Age) AS AverageAge
FROM dbo.Students;
GO

SELECT MAX(Salary)
FROM HR.Employees;
GO

SELECT TOP 2 *
FROM dbo.Students;
GO
