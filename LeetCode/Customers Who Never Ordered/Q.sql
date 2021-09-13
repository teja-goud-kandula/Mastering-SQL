
create table Customers
(
	ID INT NOT NULL IDENTITY(1,1),
	Name nvarchar(30)
)

insert into customers values
('Joe'),
('Henry'),
('Sam'),
('Max');

create table orders
(
	 Id INT,
	 CustomerId INT
)

insert into orders values
(1,3),
(3,1);
