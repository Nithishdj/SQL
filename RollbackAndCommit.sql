use db;
set autocommit = 0;
create table product(
id int primary key,
name varchar(20),
price int,
quantity int);

insert into product (id,name,price,quantity) values
(1,"Pen",10,100),
(2,"Pencil",5,200),
(3,"Eraser",10,150),
(4,"Sharpener",20,200),
(5,"Bag",2,10);

select * from product;
commit;
 
delete from product;

rollback;