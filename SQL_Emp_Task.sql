use db;
create table
EmployeeDetail(EmpID int primary key,
EmpName varchar(20),
EmpGender varchar(20),
Age int,
EmpDept varchar(20),
Project varchar(20),
logged_hrs int,
Salary int,
Experience_in_years int);

INSERT INTO EmployeeDetail VALUES
(1, 'Teena', 'Female', 30, 'HR', 'Onboarding', 160, 50000, 5),
(2, 'Ganesh', 'Male', 28, 'IT', 'AppDev', 180, 65000, 4),
(3, 'Kumar', 'Male', 35, 'Finance', 'Budgeting', 150, 70000, 10),
(4, 'Diana', 'Female', 40, 'IT', 'Security', 170, 75000, 12),
(5, 'Smith', 'Male', 26, 'Marketing', 'Campaigns', 165, 48000, 3);

select* from EmployeeDetail;

/*How many employees work in each department?*/
select EmpDept, count(*) as EmpCount from EmployeeDetail
group by EmpDept;
 
/*For each department, show total, average, minimum, and maximum salary.*/
select
    EmpDept,
    sum(Salary) as TotalSalary,
    avg(Salary) as AverageSalary,
    min(Salary) as MinSalary,
    max(Salary) as MaxSalary
from EmployeeDetail group by EmpDept;

/*Show departments where the total salary budget is over ₹2,500,000.*/
select EmpDept,
    sum(Salary) as TotalSalary
from EmployeeDetail group by EmpDept having sum(Salary) > 250000;

/*For each project, find out how many hours have been logged across all employees.*/
select Project,
	sum(logged_hrs) as TotalLoggedHrs
    from EmployeeDetail group by Project;
    
 /*List departments with average experience ≥ 5 years*/   
select EmpDept,
	avg(Experience_in_years) as Avg_Experience
    from EmployeeDetail
    group by EmpDept having avg(Experience_in_years)>=5;
    
/*Which gender has the higher average salary?*/
select EmpGender,
	avg(Salary) as AvgSalary
    from EmployeeDetail
    group by EmpGender order by AvgSalary desc limit 1;
    
/*Find the project with the highest total hours logged.*/
select Project,
	sum(logged_hrs) as TotalLoggedHrs
    from EmployeeDetail
    group by Project order by TotalLoggedHrs desc limit 1;
    



