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


CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT
);
INSERT INTO courses (course_id, course_name, credits)
VALUES
(1, 'Mathematics', 3.0),
(2, 'Physics', 4.0),
(3, 'Chemistry', 3.5),
(4, 'Biology', 3.0),
(5, 'Computer Science', 4.0),
(6, 'English Literature', 2.5),
(7, 'History', 3.0),
(8, 'Economics', 3.5),
(9, 'Philosophy', 2.0),
(10, 'Statistics', 4.0);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    enrolled_on DATE
);

INSERT INTO enrollments (enrollment_id, enrolled_on)
VALUES
(1, '2025-01-05'),
(2, '2025-01-07'),
(3, '2025-01-10'),
(4, '2025-01-15'),
(5, '2025-01-20'),
(6, '2025-02-01'),
(7, '2025-02-05'),
(8, '2025-02-10'),
(9, '2025-02-15'),
(10, '2025-02-20');

ALTER TABLE students
ADD COLUMN gender VARCHAR(10);

ALTER TABLE courses
MODIFY COLUMN credits DECIMAL(3,1);

ALTER TABLE students
DROP COLUMN email;

ALTER TABLE courses
RENAME TO subjects;

ALTER TABLE students
RENAME COLUMN name TO full_name;

DROP TABLE enrollments;

TRUNCATE TABLE students;

SELECT course_name, credits
FROM courses;

SELECT DISTINCT s.full_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id;

SELECT s.full_name
FROM students s
LEFT JOIN enrollments e ON s.student_id = e.student_id
WHERE e.student_id IS NULL;

SELECT full_name
FROM students
WHERE student_id NOT IN (SELECT student_id FROM enrollments);

SELECT 
    s.student_id,
    s.full_name AS student_name,
    c.course_name,
    e.enrolled_on
FROM enrollments e
JOIN students s 
    ON e.student_id = s.student_id
JOIN courses c 
    ON e.course_id = c.course_id;
    
    SELECT 
    c.course_name,
    COUNT(e.student_id) AS total_students
FROM enrollments e
JOIN courses c 
    ON e.course_id = c.course_id
GROUP BY c.course_name;

SELECT 
    c.course_name,
    AVG(s.age) AS average_age
FROM enrollments e
JOIN students s 
    ON e.student_id = s.student_id
JOIN subjects c 
    ON e.course_id = c.course_id
GROUP BY c.course_name;
