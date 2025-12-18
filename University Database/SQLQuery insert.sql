INSERT INTO Department (department_id, d_name) 
VALUES
(1, 'Computer Science'),
(2, 'Mechanical Engineering'),
(3, 'Business Administration');
select * from Department

INSERT INTO Hostel (hostel_id, hostel_name, city, state, address, pin_code, no_of_seat) 
VALUES
(1, 'Maple Hostel', 'Muscat', 'Oman', '123 Maple Street', '112233', 120),
(2, 'Oak Hostel', 'Salalah', 'Oman', '45 Oak Avenue', '223344', 80),
(3, 'Pine Hostel', 'Sohar', 'Oman', '78 Pine Road', '334455', 60);
select * from Hostel

INSERT INTO Course (course_id, course_name, duration) 
VALUES
(1, 'Bachelor of Computer Science', '4 years'),
(2, 'Mechanical Engineering', '4 years'),
(3, 'MBA', '2 years');
select * from Course 

INSERT INTO Faculty (f_id, name, mobile_no, department_id, salary) 
VALUES
(1, 'Dr. Ahlam', '9876543210', 1, 5000.00),
(2, 'Dr. Khalid', '9876501234', 2, 5500.00),
(3, 'Dr. Sara', '9876512345', 3, 6000.00);

select * from Faculty  


INSERT INTO Student (s_id, department_id, hostel_id, f_name, l_name, phone_no, dob, age) 
VALUES
(1, 1, 1, 'Ali', 'Ahmed', '9012345678', '2002-05-12', 21),
(2, 2, 2, 'Sara', 'Khalid', '9023456789', '2001-08-23', 22),
(3, 3, 3, 'Omar', 'Hassan', '9034567890', '2000-12-11', 23);

select * from Student 

INSERT INTO Subject (subject_id, f_id, subject_name) 
VALUES
(1, 1, 'Data Structures'),
(2, 2, 'Thermodynamics'),
(3, 3, 'Marketing Management');

select * from Subject 


INSERT INTO Exams (exam_code, department_id, exam_date, exam_time, room) 
VALUES
(101, 1, '2025-06-01', '09:00:00', 'CS101'),
(102, 2, '2025-06-02', '10:00:00', 'ME201'),
(103, 3, '2025-06-03', '11:00:00', 'MBA301');


select * from Exams 


INSERT INTO Fac_Student (f_id, s_id) 
VALUES
(1, 1),
(2, 2),
(3, 3);

select * from Fac_Student 


INSERT INTO Stud_Course (s_id, course_id) 
VALUES
(1, 1),
(2, 2),
(3, 3);
select * from Stud_Course


INSERT INTO Stud_Subject (s_id, subject_id) 
VALUES
(1, 1),
(2, 2),
(3, 3);
select * from Stud_Subject


INSERT INTO Stud_Exams (s_id, exam_code) 
VALUES
(1, 101),
(2, 102),
(3, 103);

select * from Stud_Exams



INSERT INTO Dep_Course (department_id, course_id) 
VALUES
(1, 1),
(2, 2),
(3, 3);

select * from Dep_Course

