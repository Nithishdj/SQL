/*VIEW*/
use dbhai;
create view student_view as
select student_id,name,age
from student
where age = 19;

select * from student_view;

/*REPLACING VIEW*/
create or replace view student_replace as select student_id,name,email from student;
select * from student_replace;

/*DROPING VIEW*/
drop view student_replace;


/*LIST OF VIEW IN DB*/
create database crud_db;
show full tables in crud_db where table_type = 'VIEW';

create table order1(
order_id int,
status varchar(20),
age1 varchar(20)
);
desc order1;
insert into order1 (order_id,status,age1) values
(1,2,"Pending"),
(2,3,"Rejected"),
(3,4,"Approved"),
(1,2,"Pending");

/*CREATING VIEW*/
create view order_view as
select order_id,status,age1
from order1
where status = 2;

/*SHOW VIEW*/
select * from order_view;