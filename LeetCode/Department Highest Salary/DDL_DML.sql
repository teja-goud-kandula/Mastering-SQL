create table Employee
(
	Id int,
	Name nvarchar(10),
	Salary int,
	DepartmentId int
)
GO

insert into Employee values
(1,'Joe',70000,1),
(2,'Jim',90000,1),
(3,'Henry',80000,2),
(4,'Sam',60000,2),
(5,'Max',90000,1)

insert into Department values
(1,'IT'),
(2,'Sales')

create table Department
(
	Id int,
	Name nvarchar(10)
)
