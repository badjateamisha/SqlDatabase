create database payroll_service
use payroll_service
create table employee_payroll(ID int identity(1,1) primary key,Name varchar(100),Salary int,Start_Date date)
INSERT into employee_payroll values ('Amisha',100,'2022-01-03'),('Aarvik',200,'2022-01-02'),('Disha',300,'2022-01-01')
select * from employee_payroll
SELECT Salary FROM employee_payroll WHERE Name = 'Amisha'
SELECT * from employee_payroll WHERE Start_Date BETWEEN CAST('2022-01-02' AS DATE) AND GETDATE()
Alter table employee_payroll add Gender varchar(10)
UPDATE employee_payroll set Gender ='F' where name = 'Amisha' or name ='Disha';
UPDATE employee_payroll set Gender ='M' where Name='Aarvik';

SELECT SUM(salary) FROM employee_payroll WHERE Gender = 'F' GROUP BY Gender;

SELECT AVG(salary) from employee_payroll
SELECT AVG(salary) from employee_payroll WHERE Gender = 'F' GROUP BY Gender;

SELECT Min(salary) from employee_payroll
SELECT Min(salary) from employee_payroll WHERE Gender = 'F' GROUP BY Gender;

SELECT Max(salary) from employee_payroll
SELECT Max(salary) from employee_payroll WHERE Gender = 'F' GROUP BY Gender;

SELECT Count(Name) from employee_payroll
SELECT Count(Name) from employee_payroll where Gender ='F' GROUP BY Gender;
SELECT Count(Name) from employee_payroll where Gender ='M' GROUP BY Gender;