CREATE DATABASE LearningSQL;
GO

USE LearningSQL;
GO

CREATE TABLE Students
(
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
GO

SELECT * FROM Students;
GO
