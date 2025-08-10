use dbhai;
CREATE TABLE student (
    student_id INT,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100)
);

INSERT INTO student (student_id, name, age, email)
VALUES
(1, 'Rahul Sharma', 20, 'rahul.sharma@example.com'),
(2, 'Priya Verma', 22, 'priya.verma@example.com'),
(3, 'Amit Kumar', 19, 'amit.kumar@example.com'),
(4, 'Neha Singh', 21, 'neha.singh@example.com'),
(5, 'Vikram Patel', 23, 'vikram.patel@example.com'),
(6, 'Anjali Das', 20, 'anjali.das@example.com'),
(7, 'Ravi Iyer', 22, 'ravi.iyer@example.com'),
(8, 'Sneha Reddy', 19, 'sneha.reddy@example.com'),
(9, 'Karan Mehta', 24, 'karan.mehta@example.com'),
(10, 'Pooja Nair', 21, 'pooja.nair@example.com');

/*ADD CONSTRAINTS*/
/*UNIQUE*/
alter table	student 
add constraint unique(name);

/*NOT NULL*/
alter table student 
modify age int not null;

/*CHECK*/
alter table student
add constraint check_age check (age>=18);

/*DEFAULT*/
alter table student
alter column email set default 'xxx@example.com';

/*AUTO INCREMENT*/
alter table student
auto_increment=1000;

/*DROP CONSTRAINTS*/
/*DROP PRIMARY KEY*/
alter table students
drop primary key;

/*REMOVE NOT NULL*/
alter table student
modify age int null;

/*DROP CHECK*/
alter table student
drop check check_age;

/*DROP DEFAULT*/
alter table student
alter column email drop default;



