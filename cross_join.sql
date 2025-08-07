/*CROSS JOIN*/
use db;
create table students(
id int primary key,
stu_name varchar(20),
grade varchar(20),
class_id int
);
insert into students(id,stu_name,grade,class_id) values
(1,"Hari","10th",100),
(2,"Vishal","9th",101),
(3,"Varun","8th",102),
(4,"Nihash","7th",103),
(5,"Ahal","10th",104),
(6,"Nithya","8th",105);

create table stu_dep(
class_id int,
sub varchar(20),
age int,
marks int);

insert into stu_dep(class_id,sub,age,marks) values
(100,"Maths",15,35),
(101,"Science",14,75),
(102,"Physics",13,60),
(103,"English",12,97),
(104,"Tamil",15,98),
(105,"Maths",15,88),
(106,"Chemistry",15,14);

select * from stu_dep;
select * from students;

select students.stu_name, students.grade,stu_dep.age,stu_dep.sub,stu_dep.marks
from students cross join stu_dep; 