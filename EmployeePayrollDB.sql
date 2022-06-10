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

alter table employee_payroll add phonenumber varchar(50),address varchar(200) not null default 'Pune',department varchar(50);

update employee_payroll set phonenumber='9182736450', department='Sales' where name='Disha';
update employee_payroll set phonenumber='9078563412', department='Marketing' where name='Aarvik';
update employee_payroll set phonenumber='9876543210', department='Sales' where name='Amisha';

alter table employee_payroll add BasicPay decimal, Deductions decimal, TaxablePay decimal, IncomeTax decimal, NetPay decimal;

update employee_payroll set BasicPay=Salary;
alter table employee_payroll drop column Salary;

update employee_payroll set Deductions=10 where department = 'sales';
update employee_payroll set Deductions=20 where department = 'Marketing';

update employee_payroll set IncomeTax=50;
update employee_payroll set TaxablePay=50;

update employee_payroll set NetPay = (BasicPay-Deductions);

select * from employee_payroll;

Insert into employee_payroll Values ('Terisa','2022-01-05','F','9000000005','ABC Colony','Sales',15000,1000,500,250,14000);
Insert into employee_payroll Values ('Terisa','2022-01-05','F','9000000005','ABC Colony','Marketing',15000,1000,500,250,14000);

create table Company(compId INT PRIMARY KEY, compName varchar(20));
SELECT* from Company

create table employee(empId int PRIMARY KEY,Name varchar(20),compId INT REFERENCES Company(compId) ,Phone varchar(20),Address varchar(200),Gender char);
select* from employee

create Table payroll(empId INT REFERENCES employee(empId), BasicPay decimal,Deduction decimal, TaxablePay decimal ,IncomeTax decimal,NetPay decimal);
select* from payroll

Create TABLE DEPARTMENT(DeptName VARCHAR(10),empId INT REFERENCES employee(empId),deptId int PRIMARY KEY);
select* from DEPARTMENT;