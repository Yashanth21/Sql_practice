CREATE TABLE Employee
(
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT,
    Salary INT
);

INSERT INTO Employee
VALUES
(101,'John',1,50000),
(102,'Alice',1,70000),
(103,'Bob',1,70000),
(104,'David',2,90000),
(105,'Emma',2,80000),
(106,'Frank',2,60000),
(107,'Grace',3,75000),
(108,'Henry',3,75000),
(109,'Isabella',3,55000),
(110,'Jack',3,45000);

SELECT *
FROM Employee;

SELECT
    EmpName,
    Salary,
    ROW_NUMBER() OVER(ORDER BY Salary DESC) AS RowNum
FROM Employee;

SELECT
    EmpName,
    Salary,
    RANK() OVER(ORDER BY Salary DESC) AS RankNo
FROM Employee;

SELECT
    EmpName,
    Salary,
    DENSE_RANK() OVER(ORDER BY Salary DESC) AS DenseRank
FROM Employee;

SELECT
    EmpName,
    Salary,
    NTILE(3) OVER(ORDER BY Salary DESC) AS Bucket
FROM Employee;

SELECT
    EmpName,
    DeptID,
    Salary,
    SUM(Salary) OVER(PARTITION BY DeptID) AS TotalDeptSalary
FROM Employee;

SELECT
    EmpName,
    DeptID,
    Salary,
    AVG(Salary) OVER(PARTITION BY DeptID) AS AvgDeptSalary
FROM Employee;

SELECT
    EmpName,
    DeptID,
    COUNT(*) OVER(PARTITION BY DeptID) AS EmployeesInDept
FROM Employee;

SELECT
    EmpName,
    DeptID,
    Salary,
    MIN(Salary) OVER(PARTITION BY DeptID) AS LowestSalary
FROM Employee;

SELECT
    EmpName,
    DeptID,
    Salary,
    MAX(Salary) OVER(PARTITION BY DeptID) AS HighestSalary
FROM Employee;

SELECT
    EmpName,
    Salary,
    SUM(Salary) OVER
    (
        ORDER BY Salary
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND CURRENT ROW
    ) AS RunningTotal
FROM Employee;

SELECT
    EmpName,
    Salary,
    AVG(Salary) OVER
    (
        ORDER BY Salary
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND CURRENT ROW
    ) AS RunningAverage
FROM Employee;

SELECT
    EmpName,
    Salary,
    MAX(Salary) OVER
    (
        ORDER BY Salary
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND CURRENT ROW
    ) AS RunningMax
FROM Employee;

SELECT
    EmpName,
    Salary,
    MIN(Salary) OVER
    (
        ORDER BY Salary
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND CURRENT ROW
    ) AS RunningMin
FROM Employee;

SELECT
    EmpName,
    Salary,
    LAG(Salary) OVER(ORDER BY Salary) AS PreviousSalary
FROM Employee;

SELECT
    EmpName,
    Salary,
    LEAD(Salary) OVER(ORDER BY Salary) AS NextSalary
FROM Employee;

SELECT
    EmpName,
    Salary,
    FIRST_VALUE(Salary) OVER
    (
        ORDER BY Salary
    ) AS LowestSalary
FROM Employee;

SELECT
    EmpName,
    Salary,
    LAST_VALUE(Salary) OVER
    (
        ORDER BY Salary
        ROWS BETWEEN CURRENT ROW
        AND UNBOUNDED FOLLOWING
    ) AS HighestSalary
FROM Employee;

SELECT
    EmpName,
    DeptID,
    Salary,
    RANK() OVER
    (
        PARTITION BY DeptID
        ORDER BY Salary DESC
    ) AS DeptRank
FROM Employee;

SELECT
    EmpName,
    DeptID,
    Salary,
    DENSE_RANK() OVER
    (
        PARTITION BY DeptID
        ORDER BY Salary DESC
    ) AS DeptDenseRank
FROM Employee;

SELECT
    EmpName,
    DeptID,
    Salary,
    ROW_NUMBER() OVER
    (
        PARTITION BY DeptID
        ORDER BY Salary DESC
    ) AS DeptRowNumber
FROM Employee;

SELECT
    EmpName,
    DeptID,
    Salary,
    SUM(Salary) OVER
    (
        PARTITION BY DeptID
        ORDER BY Salary
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND CURRENT ROW
    ) AS DeptRunningTotal
FROM Employee;