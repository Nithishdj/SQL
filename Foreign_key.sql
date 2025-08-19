use db;
CREATE TABLE worker (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    job_desc VARCHAR(50),
    salary DECIMAL(10,2),   
    branch_id INT,
    CONSTRAINT FK_branch_id FOREIGN KEY (branch_id) REFERENCES branch(branch_id)
);

create table branch(
branch_id int primary key,
location varchar(50),
address varchar(50)
);

INSERT INTO branch (branch_id, location, address)
VALUES
(1, 'Chennai', '123 Anna Salai'),
(2, 'Bangalore', '45 MG Road'),
(3, 'Hyderabad', '67 Banjara Hills'),
(4, 'Mumbai', '89 Marine Drive'),
(5, 'Delhi', '101 Connaught Place');

INSERT INTO worker (emp_id, emp_name, job_desc, salary, branch_id)
VALUES
(101, 'Rahul Sharma', 'Manager', 75000.00, 1),
(102, 'Priya Verma', 'Sales Executive', 40000.00, 2),
(103, 'Amit Kumar', 'Software Engineer', 55000.00, 3),
(104, 'Neha Singh', 'HR Executive', 35000.00, 1),
(105, 'Vikram Patel', 'Accountant', 45000.00, 4),
(106, 'Anjali Das', 'Data Analyst', 60000.00, 2),
(107, 'Ravi Iyer', 'Technician', 30000.00, 5),
(108, 'Sneha Reddy', 'Consultant', 50000.00, 3),
(109, 'Karan Mehta', 'Assistant Manager', 65000.00, 4),
(110, 'Pooja Nair', 'Intern', 20000.00, 5);

select emp_name,location
from worker w join
branch b on w.branch_id = b.branch_id
where location = "Chennai";

select emp_name,location
from worker w join
branch b on w.branch_id = b.branch_id
where salary > 50000.00;

select count(emp_id)as Emp_count, location
from worker w join
branch b on w.branch_id = b.branch_id
group by location;

