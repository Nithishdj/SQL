use db;
create table workers(
id int primary key,
name varchar(20),
dep_id int
);
create table depart(
dep_id int primary key,
dep_name varchar(20),
salary int
);
insert into workers(id,name,dep_id) values
(1,"Ajith",101),
(2,"Harish",102),
(3,"Gowtham",103),
(4,"Nithya",104),
(5,"Prema",105),
(6,"Andrea",106);
insert into depart(dep_id,dep_name,salary) values
(101,"HR",20000),
(102,"DEV",40000),
(103,"Manager",80000),
(104,"Marketing",15000),
(105,"Finance",25000),
(106,"HR",20000);

/*INNER JOIN*/
select workers.id, workers.name, depart.dep_id, depart.dep_name
from workers inner join depart on workers.dep_id = depart.dep_id; 

/*LEFT JOIN*/
select workers.name ,workers.id, depart.dep_id, depart.dep_name
from depart left join workers on depart.dep_id = workers.dep_id;

/*RIGHT JOIN*/
select workers.name, dep_name 
from workers right join depart
on workers.dep_id = depart.dep_id;

select*from depart;
select*from workers;






