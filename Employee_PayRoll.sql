create database EmployeePayRoll

use EmployeePayRoll

Create Table employee_payroll (
Id int not null identity (1,1) primary key,
Name varchar(20),
Salary varchar(20),
StartDate varchar(20)
)
insert into employee_payroll (Name,Salary,StartDate)values ('shree','30000','26-08-2021')
insert into employee_payroll (Name,Salary,StartDate)values ('sai','40000','26-08-2021')
insert into employee_payroll (Name,Salary,StartDate)values ('shree','50000','26-08-2021')


