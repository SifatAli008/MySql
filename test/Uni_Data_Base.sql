create database universty;
use universty;

create table dept(
 id int primary key,
 name varchar(50)
);

create table teacher(
  id int primary key,
  name varchar(50),
  dept_id int,
  foreign key (dept_id) references dept(id)
);

insert into dept
(id,name)
values
(101,"Science"),
(102,"English"),
(103,"Math");

insert into teacher
(id,name,dept_id)
values
(1,"Adam",101),
(2,"English",103),
(3,"Math",102),
(4,"Math",102);

select * FROM dept;
select * from teacher;