Create Database Company

Use Company


Create Table Departments
(
ID int primary key identity,
Name nvarchar(25)not null check(len(Name)>2)
)
Create Table Employees
(
ID int primary key identity,
Fullname nvarchar(35)  not null check(Fullname>3),
Salary smallmoney check(Salary>0),
DepartmentID int  references Departments(ID)
)

