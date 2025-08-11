use dbhai;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100)
);

INSERT INTO students (student_id, name, age, email)
VALUES
(1, 'Aarav Kumar', 20, 'aarav.kumar@example.com'),
(2, 'Priya Sharma', 22, 'priya.sharma@example.com'),
(3, 'Rohan Mehta', 19, 'rohan.mehta@example.com'),
(4, 'Ananya Gupta', 21, 'ananya.gupta@example.com'),
(5, 'Vikram Singh', 23, 'vikram.singh@example.com'),
(6, 'Sneha Verma', 20, 'sneha.verma@example.com'),
(7, 'Arjun Reddy', 22, 'arjun.reddy@example.com'),
(8, 'Meera Iyer', 19, 'meera.iyer@example.com'),
(9, 'Karan Joshi', 21, 'karan.joshi@example.com'),
(10, 'Ishita Desai', 20, 'ishita.desai@example.com');

/*SUB QUERY*/
select student_id ,name,(select avg(age) from students) as avg_age
from students;

select student_id ,name,(select max(age) from students) as max_age
from students;

select student_id ,name,(select min(age) from students) as min_age
from students;