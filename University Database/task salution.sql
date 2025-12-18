---1
select * from Student 
---2
select f_name,l_name,dob   from Student  
---3 
select course_name,course_id from course
---4
select f_name,l_name from Student
---5
select s_id,f_name ,l_name from Student
---6
select s_id,f_name ,l_name ,dob from Student where dob>'2001-08-23'
---7 not have gpa
---8  not have gpa
---9 not have gpa
---10
SELECT COUNT(*) AS total_student from Student
--11
select f_name,l_name from Student WHERE f_name LIKE '%a';
--12
--- no null atrubute 
---13
select s_id,f_name ,l_name ,dob from Student where dob = '2002-05-12'
--14
insert into Student (s_id, department_id)VALUES(300045,2)
---15
INSERT INTO Student ( s_id,f_name, l_name, phone_no, age) VALUES(7,'alzahra','alhinai',765636,27)
---16
---17
---18
---19