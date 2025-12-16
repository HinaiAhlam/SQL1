create database University  
create table department( department_id int primary key, d_name varchar(50))
create table hostel ( hostel_id INT PRIMARY KEY,hostel_name VARCHAR(100),city VARCHAR(50),state VARCHAR(50),address VARCHAR(200), pin_code VARCHAR(10),no_of_seat INT)
create table course ( course_id INT PRIMARY KEY, course_name VARCHAR(100),duration VARCHAR(20))
create table faculty(f_id INT PRIMARY KEY,name VARCHAR(100),mobile_no VARCHAR(20), department_id INT,salary DECIMAL(10,2),FOREIGN KEY (department_id) REFERENCES Department(department_id))
CREATE TABLE Student (s_id INT PRIMARY KEY,department_id INT,hostel_id INT,f_name VARCHAR(50),l_name VARCHAR(50),phone_no VARCHAR(20),dob DATE,age INT,
FOREIGN KEY (department_id) REFERENCES Department(department_id),
FOREIGN KEY (hostel_id) REFERENCES Hostel(hostel_id))
CREATE TABLE Subject (subject_id INT PRIMARY KEY,f_id INT,subject_name VARCHAR(100), FOREIGN KEY (f_id) REFERENCES Faculty(f_id))
CREATE TABLE Exams (exam_code INT PRIMARY KEY,department_id INT,exam_date DATE,exam_time TIME,room VARCHAR(20),FOREIGN KEY (department_id) REFERENCES Department(department_id))
CREATE TABLE Fac_Student ( f_id INT,s_id INT,PRIMARY KEY (f_id, s_id),FOREIGN KEY (f_id) REFERENCES Faculty(f_id),FOREIGN KEY (s_id) REFERENCES Student(s_id))
CREATE TABLE Stud_Course (s_id INT,course_id INT,PRIMARY KEY (s_id, course_id),FOREIGN KEY (s_id) REFERENCES Student(s_id),FOREIGN KEY (course_id) REFERENCES Course(course_id))
CREATE TABLE Stud_Subject (s_id INT,subject_id INT,PRIMARY KEY (s_id, subject_id),FOREIGN KEY (s_id) REFERENCES Student(s_id),FOREIGN KEY (subject_id) REFERENCES Subject(subject_id))
CREATE TABLE Stud_Exams ( s_id INT,exam_code INT,PRIMARY KEY (s_id, exam_code),  FOREIGN KEY (s_id) REFERENCES Student(s_id), FOREIGN KEY (exam_code) REFERENCES Exams(exam_code))
CREATE TABLE Dep_Course (department_id INT,course_id INT,PRIMARY KEY (department_id, course_id),FOREIGN KEY (department_id) REFERENCES Department(department_id),FOREIGN KEY (course_id) REFERENCES Course(course_id))
