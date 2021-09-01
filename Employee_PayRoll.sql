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

Alter Table employee_payroll
Alter Column Salary money

select SUM(Salary) as TotalSalary, AVG(Salary) as AverageSalary, MIN(Salary) as MinimumSalary, 
	   MAX(Salary) as MaximumSalary, COUNT(*) as TotalEmployee
From employee_payroll WHERE Gender='M' Group By Gender 

select SUM(Salary) as TotalSalary, AVG(Salary) as AverageSalary, MIN(Salary) as MinimumSalary, 
	   MAX(Salary) as MaximumSalary, COUNT(*) as TotalEmployee
From employee_payroll WHERE Gender='F' Group By Gender 

Alter Table employee_payroll 

ADD phone_number varchar(12), address varchar(50) Default ('US'), department varchar (50) NOT NULL Default ('Engineering');

Update employee_payroll set phone_number='9191919100'
Where Name='shree'
Update employee_payroll set phone_number='9191919111'
Where Name='Bills'
Update employee_payroll set phone_number='9191919122'
Where Name='sai'
Update employee_payroll set department='Operation'
Where Name='Bills'
Update employee_payroll set department='Account'
Where Name='sai'

Alter Table employee_payroll 
Drop Column Salary

Alter Table employee_payroll
Add BasicPay int, Deduction float, TaxablePay float, Tax float, NetPay float


Insert Into employee_payroll(Name, Gender, StartDate, phone_number, address, department, BasicPay, Deduction, TaxablePay, Tax, NetPay ) 
							Values('Terissa','F','2010-01-01','7987210210','India','Sales',40000,4000.0,1500.0,500.0,34000.0)

Insert Into employee_payroll(Name, Gender, StartDate, phone_number, address, department, BasicPay, Deduction, TaxablePay, Tax, NetPay ) 
							Values('Terissa','F','2010-01-01','7987210210','India','Marketing',40000,4000.0,1500.0,500.0,34000.0)

select * from employee_payroll
WHERE Name='Terissa';


/* Represents the ER Diagram */
Create Table Employee 
(
 Emp_Id int identity (1,1) primary key,
 Emp_Name varchar(30),
 Gender Char(1),
 PhoneNumber varchar(12),
 Address varchar(50),
 City varchar(15),
 State varchar(12),
 Start date
)

Create Table Company
(
  Company_Id int identity (1,1) primary key,
  Company_Name varchar(40),
  Emp_Id int Foreign Key References Employee(Emp_Id)
)

Create Table Department
(
  Dept_Id int identity (1,1) primary key,
  Dept_Name varchar(15),
  Emp_Id int Foreign Key References Employee(Emp_Id)
)

Create Table PayRoll
(
  BasicPay int, 
  Deduction float, 
  TaxablePay float, 
  Tax float,
  NetPay float,
  Emp_Id int Foreign Key References Employee(Emp_Id)
)

/* Insert data into Employee */
Insert Into Employee Values('shree','M','9191919100','Hinjawadi','Pune','Maharashtra','2016-01-01')
Insert Into Employee Values('Ketan','M','8989898900','Kunj','Solan','HP','2020-02-05')
Insert Into Employee Values('Chetan','M','7878787878','SMRoad','Vadodara','Gujarat','2021-08-19')

/* Insert data into Company */
Insert Into Company Values ('Infosys',1)
Insert Into Company Values ('Infosys',3)
Insert Into Company Values ('Capgemeni',2)

-- Retrieve the data from tables
Select * From Employee

Select * From Company





