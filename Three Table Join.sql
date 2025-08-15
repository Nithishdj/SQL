use dbhai;
select * from students;
select * from courses;
select * from enrollments;

/*Three tables join*/
select name,age,email,course_name,credits,enrolled_on
from students s inner join enrollments e
on e.student_id = s.student_id
inner join courses c
on c.course_id = e.course_id;

/*Parent-child relationship*/
select name,age,email,course_name,credits,enrolled_on
from students s, courses c , enrollments e
where s.student_id = e.student_id and
	  c.course_id = e.course_id;

