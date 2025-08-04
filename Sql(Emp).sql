create database dbhai;
use dbhai;
show databases;
use db;
create table
Employee(EmpId int primary key,EmpFirstName varchar(23),EmpLastName varchar(23),EmpDep varchar(23),EmpAge int);
show tables;
desc Employee;
insert into Employee(EmpId,EmpFirstName,EmpLastName,EmpDep,EmpAge) values(1,"Nithish","D","Web Dev",21);
insert into Employee(EmpId,EmpFirstName,EmpLastName,EmpDep,EmpAge) values(2,"Vishal","E","Web Dev",28);
insert into Employee(EmpId,EmpFirstName,EmpLastName,EmpDep,EmpAge) values(3,"Harish","S","Dig Mar",22);
insert into Employee(EmpId,EmpFirstName,EmpLastName,EmpDep,EmpAge) values(4,"Naive","M","Cloud",20);
select*from Employee;