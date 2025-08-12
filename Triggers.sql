CREATE DATABASE IF NOT EXISTS dbhai;
USE dbhai;

CREATE TABLE student (
    student_id INT,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100)
);

INSERT INTO student (student_id, name, age, email) VALUES
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

CREATE TABLE student_audit (
    student_id INT,
    operation VARCHAR(10),
    updated_date DATETIME
);

DELIMITER $$

CREATE TRIGGER trg_stu_audit
AFTER INSERT
ON student
FOR EACH ROW
BEGIN
    INSERT INTO student_audit (student_id, operation, updated_date)
    VALUES (NEW.student_id, 'Inserted', NOW());
END$$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER trg_stu_audit_delete
AFTER DELETE
ON student
FOR EACH ROW
BEGIN
    INSERT INTO student_audit (student_id, operation, updated_date)
    VALUES (OLD.student_id, 'Deleted', NOW());
END$$

DELIMITER ;


INSERT INTO student (student_id, name, age, email)
VALUES (12, 'Nithya', 20, 'nithya@example.com');

SELECT * FROM student_audit;

DELETE FROM student WHERE student_id = 5;





