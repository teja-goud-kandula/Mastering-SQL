--DDL

Create Table Placements.Students
(
	Id integer,
	Name nvarchar(30)
)

Create Table Placements.Friends
(
	Id integer,
	Friend_ID integer
)

Create Table Placements.Packages
(
	Id integer,
	Salary float(10)
)

-- Insert DML

Insert into Friends values
(1,2),
(2,3),
(3,4),
(4,1)
GO

Insert into Students values
(1,'Ashley'),
(2,'Samantha'),
(3,'Julia'),
(4,'Scarlet')
GO

Insert into Packages values
(1,15.20),
(2,10.06),
(3,11.55),
(4,12.12)
GO
