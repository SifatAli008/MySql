-- Create database if not exists
create database if not exists uiu;
use uiu;

create table dept(
id int primary key,
name varchar(50)
);


CREATE TABLE teacher (
    teacher_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    email VARCHAR(50) NOT NULL,
    contact VARCHAR(50) NOT NULL,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS student (
    id INT PRIMARY KEY,
	dept_id INT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    cgpa DECIMAL(3, 2) NOT NULL,
    trimester VARCHAR(10) NOT NULL,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
	ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS course (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    dept_id INT,
    credits INT NOT NULL,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
     ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS enrollment (
    student_id INT,
    student_name VARCHAR(50),
    course_id INT,
    semester VARCHAR(10) NOT NULL,
    grade VARCHAR(2),
    PRIMARY KEY (student_id, course_id, semester),
    FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (course_id) REFERENCES course(id)
	ON UPDATE CASCADE
    ON DELETE CASCADE
);

insert into dept
(id,name)
values
(101, 'Computer Science'),
(102, 'Computer Science'),
(103, 'Business Administration');

INSERT INTO teacher (teacher_id, dept_id, name, email, contact) VALUES
(1, 101, 'Alice Smith', 'alice.smith@uiu.edu', '123-456-7890'),
(2, 102, 'Bob Johnson', 'bob.johnson@uiu.edu', '234-567-8901'),
(3, 103, 'Charlie Brown', 'charlie.brown@uiu.edu', '345-678-9012');


INSERT INTO student (id, name, dept_id, email, cgpa, trimester) VALUES
(1, 'John Doe', 101, 'john.doe@uiu.edu', 3.5, 'Fall2023'),
(2, 'Jane Roe', 102, 'jane.roe@uiu.edu', 3.8, 'Fall2023'),
(3, 'Richard Roe', 103, 'richard.roe@uiu.edu', 3.2, 'Fall2023'),
(4, 'Emily Davis', 101, 'emily.davis@uiu.edu', 3.6, 'Spring2024'),
(5, 'Michael Scott', 102, 'michael.scott@uiu.edu', 3.1, 'Spring2024'),
(6, 'Sarah Connor', 103, 'sarah.connor@uiu.edu', 3.7, 'Spring2024'),
(7, 'William Brown', 101, 'william.brown@uiu.edu', 3.9, 'Fall2023'),
(8, 'Jessica Jones', 102, 'jessica.jones@uiu.edu', 3.4, 'Fall2023'),
(9, 'Thomas Anderson', 103, 'thomas.anderson@uiu.edu', 3.3, 'Fall2023'),
(10, 'Nancy Drew', 101, 'nancy.drew@uiu.edu', 3.5, 'Spring2024');

INSERT INTO course (id, name, dept_id, credits) VALUES
(1001, 'Data Structures', 101, 3),
(2001, 'Algorithms', 101, 3),
(3001, 'Circuit Analysis', 102, 3),
(4001, 'Electromagnetics', 102, 3),
(5001, 'Marketing 101', 103, 3),
(6001, 'Business Ethics', 103, 3);

INSERT INTO enrollment (student_id, student_name, course_id, semester, grade) VALUES
(1, 'John Doe', 1001, 'Fall2023', 'A'),
(1, 'John Doe', 2001, 'Fall2023', 'B'),
(2, 'Jane Roe', 3001, 'Fall2023', 'A-'),
(2, 'Jane Roe', 4001, 'Fall2023', 'B+'),
(3, 'Richard Roe', 5001, 'Fall2023', 'A'),
(3, 'Richard Roe', 6001, 'Fall2023', 'A-'),
(4, 'Emily Davis', 1001, 'Spring2024', 'B+'),
(4, 'Emily Davis', 2001, 'Spring2024', 'A'),
(5, 'Michael Scott', 3001, 'Spring2024', 'B'),
(5, 'Michael Scott', 4001, 'Spring2024', 'B-'),
(6, 'Sarah Connor', 5001, 'Spring2024', 'A'),
(6, 'Sarah Connor', 6001, 'Spring2024', 'A'),
(7, 'William Brown', 1001, 'Fall2023', 'A-'),
(7, 'William Brown', 2001, 'Fall2023', 'B+'),
(8, 'Jessica Jones', 3001, 'Fall2023', 'B'),
(8, 'Jessica Jones', 4001, 'Fall2023', 'B-'),
(9, 'Thomas Anderson', 5001, 'Fall2023', 'A'),
(9, 'Thomas Anderson', 6001, 'Fall2023', 'A-'),
(10, 'Nancy Drew', 1001, 'Spring2024', 'A'),
(10, 'Nancy Drew', 2001, 'Spring2024', 'B+');

 
drop table if exists teacher;
drop table if exists student;
drop table if exists course;
drop table if exists enrollment;
 
select * from dept; 
select * from teacher; 
select * from student;
select * from course; 
select * from enrollment;

select * from faculty;
drop table if exists faculty;

select * from student order by cgpa desc; 
select dept_id,count(id) from student group by dept_id;

update dept
set id = 201
where id = 102;

drop database uiu;

alter table student
add column age int;

alter table student
drop column age;

alter table student
rename to faculty;
