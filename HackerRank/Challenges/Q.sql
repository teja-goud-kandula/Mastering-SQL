create table Hackers
(
	hacker_id int,
	name nvarchar(30),
)
GO

Create table Challenges
(
	challenge_id int,
	hacker_id int
)
GO

insert into Challenges values
(61654,5077),
(58302,21283),
(40587,88255),
(29477,5077),
(1220,21283),
(69514,21283),
(46561,62743),
(58077,62743),
(18483,88255),
(76766,21283),
(52382,5077),
(74467,21283),
(33625,96196),
(26053,88255),
(42665,62743),
(12859,62743),
(70094,21283),
(34599,88255),
(54680,88255),
(61881,5077)
GO

insert into Hackers values
(5077,'Rose'),
(21283,'Angela'),
(62743,'Frank'),
(88255,'Patrick'),
(96196,'Lisa')
GO 
