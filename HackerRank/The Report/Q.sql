-- DDL and DML for the tables 
create table students
(
	ID Int,
	Name nvarchar(30),
	Marks Int
)
GO

Create table Grades
(
	Grade int,
	Min_Mark int,
	Max_Mark int
)
GO

insert into Grades values
(1,0,9),
(2,10,19),
(3,20,29),
(4,30,39),
(5,40,49),
(6,50,59),
(7,60,69),
(8,70,79),
(9,80,89),
(10,90,100)

GO

insert into students values
(1,'Julia',88),
(2,'Samantha',68),
(3,'Maria',99),
(4,'Scarlet',78),
(5,'Ashley',63),
(6,'Jane',81)

GO
