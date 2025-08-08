use db;
create table products(
product_id int primary key,
name varchar(20),
price int
);
create table quantities(
quantity int
);

insert into products(product_id,name,price) values
(1,"Pen",2),
(2,"Notebook",5);

insert into quantities(quantity) values
(10),
(20);

select p.product_id,p.name,p.price,q.quantity
from products p cross join quantities q;

/*Query to calculate the total price for each product at each quantity.*/
select p.product_id,p.name,p.price,q.quantity,
(price * quantity) as Total_price
from products p cross join quantities q;

/*combinations of product and quantity have a total price greater than or equal to 100*/
select p.product_id,p.name,p.price,q.quantity,
(price * quantity) as Total_price
from products p cross join quantities q where (price * quantity) >=100;

/*Query to find which product and quantity combinations have a total cost that is an even number.*/
select p.product_id,p.name,p.price,q.quantity,
(price * quantity) as Total_price
from products p cross join quantities q where (price * quantity)%2=0;

/*Based on the CROSS JOIN result, what would be the total cost of buying 20 units of each product*/
select p.product_id,p.name,p.price,q.quantity,
(price * quantity) as Total_price
from products p cross join quantities q where q.quantity = 20;

