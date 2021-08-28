create database EmployeePayRoll

use EmployeePayRoll

Create Table employee_payroll (
Id int not null identity (1,1) primary key,
Name varchar(20),
Salary varchar(20),
StartDate varchar(20)
)

insert into employee_payroll (Name,Salary,StartDate)values ('shree','30000','2016-01-01')
insert into employee_payroll (Name,Salary,StartDate)values ('Bills','30000','2010-01-01')
insert into employee_payroll (Name,Salary,StartDate)values ('sai','30000','2013-01-10')

select * from employee_payroll

SELECT *
FROM employee_payroll
WHERE Name='Bills' AND StartDate BETWEEN CAST('2010-01-01' AS DATE ) AND GETDATE();

Alter Table employee_payroll 
ADD Gender varchar(2)

Update employee_payroll set Gender='M' 
WHERE Name='Bills' OR Name='sai'

