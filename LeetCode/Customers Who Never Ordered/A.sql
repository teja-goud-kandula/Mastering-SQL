select Name as Customers from Customers where ID NOT IN (select CustomerId from orders);
