create database payroll_service
use payroll_service
create table employee_payroll(ID int identity(1,1) primary key,Name varchar(100),Salary int,Start_Date date)
INSERT into employee_payroll values ('Amisha',100,'2022-01-03'),('Aarvik',200,'2022-01-02'),('Disha',300,'2022-01-01')
