use Company_SD
select*from Employee
select  Fname , Lname,salary,Dno from Employee
select Fname +' '+ Lname AS fullName, salary *0.10 AS ANNUAL_COMM FROM Employee
SELECT  SSN,FName + ' ' + LName AS EmpName FROM Employee WHERE Salary > 1000;
SELECT SSN,FName + ' ' + LName AS EmpNam FROM Employee WHERE Salary*12 > 10000;
SELECT Fname AS EMPNAME , salary FROM Employee WHERE Sex='F';
SELECT *FROM Employee WHERE salary  BETWEEN 2000 AND 5000;
SELECT Fname +' '+ Lname AS EMPNAME FROM Employee ORDER BY Salary DESC;
SELECT MAX(salary) AS MAXSALARY,MIN(salary)AS MINSALARY,AVG(salary)AS AVGSALARY FROM Employee
SELECT COUNT(*)AS TotalEmployees from Employee
select *from employee where FName like 'a%'
select *from Employee where Superssn is null;
select*from Dependent
select*from Works_for
select*from Departments
INSERT INTO Employee (FName, LName,Dno, SSN, Superssn, Salary) VALUES ('AHLAM','ALHINAI',30,102672,112233,3000) 
INSERT INTO Employee (FName, LName,Dno, SSN, Superssn, Salary) VALUES ('ALZAHRA','ALHINAI',30,102660,NULL,NULL)
UPDATE Employee SET Salary = Salary * 1.20 WHERE SSN = 102672;
UPDATE Employee SET Salary= Salary*1.05 WHERE Dno=30 
ALTER TABLE Employee ADD Commission DECIMAL(10, 2) NULL;


UPDATE Employee SET Commission = NULL WHERE Salary < 2000;

SELECT FName, LName, Salary, Commission FROM Employee;
DELETE FROM Employee WHERE Salary IS NULL;
