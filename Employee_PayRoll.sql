create database EmployeePayRoll

use EmployeePayRoll

Create Table employee_payroll (
Id int not null identity (1,1) primary key,
Name varchar(20),
Salary varchar(20),
StartDate varchar(20)
)