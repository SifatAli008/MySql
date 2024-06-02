create database if not exists college;
use collage;

create table student(
id int primary key,
name varchar(50),
marks int not null,
grade varchar(50),
city  varchar(50)
);

insert into student
(id,name,marks,grade,city)
values
(101, "anil", 78, "C", "Pune"), 
(102, "bhumika", 93, "A", "Mumbai"), 
(103, "chetan", 85, "B", "Mumbai"), 
(104, "dhruv", 96, "A", "Delhi"), 
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

drop table if exists student;

select * from  student;
select id , name from student;
select distinct city from student;

select * from student where marks > 80;
select * from student where city  =  "Mumbai";

select * from student where marks > 80 and city  =  "Mumbai";
select * from student where marks > 90 or city  =  "Mumbai";
select * from student where marks+10 > 100;

select * from student where marks between 80 and 90 ;

select * from student where city in ("Delhi","Mumbai") ;
select * from student where city not in ("Delhi","Mumbai") ;

select * from  student Limit 3;
select * from  student  where marks > 70 Limit 3;

select * from  student  order by  grade asc;
select * from  student  order by city desc;

select * from  student  order by  marks desc Limit 3;

select count(id) from student;
select max(marks) from student;
select min(marks) from student;
select sum(marks) from student;
select avg(marks) from student;

select city , count(name) from student group by city;
select city ,name, count(id) from student group by city,name;
select city , avg(marks) from student group by city;

select city , avg(marks) from student group by city;
select city , avg(marks) from student group by city order by  city asc ;
select city , avg(marks) as avg_marks from student group by city order by  avg_marks asc ;

select city, count(id) from student group by city having max(marks)>90;
SELECT city FROM student
WHERE grade = "A" GROUP BY city
HAVING MAX(marks) > 93 ORDER BY city DESC;

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 0;

update student 
set grade="S"
where grade ="A";

update student
set grade="A"
WHERE marks between 80 and 90;

update student
set marks = marks+1;

insert into student
(id,name,marks,grade,city)
values
(107, "anil", 26, "F", "Pune"), 
(108, "bhumika", 30, "F", "Mumbai");


Delete From student 
where marks <33;


select * from student;