use db;
/*INNER JOIN*/
/*table 1*/
create table EmpDet(
id int primary key,
dept_name varchar(20)
);
alter table EmpDet add name varchar(20);
alter table EmpDet add dept_id int;

insert into EmpDet(id,name,dept_id) values
(1,"Vijay",26),
(2,"Rajni",27),
(3,"Kamal",28),
(4,"Trisha",29),
(5,"Pooja",30);

/*table 2*/
create table Departments(
id int,
dept_name varchar(20)
);
insert into Departments(id,dept_name) values
(26,"Politics"),
(27,"Acting"),
(28,"Technician"),
(29,"Acting"),
(30,"Dancing");

select*from EmpDet;
select*from Departments;

/*INNER JOIN QUERY*/
select e.name,d.dept_name from EmpDet e inner join Departments d
on e.dept_id=d.id;