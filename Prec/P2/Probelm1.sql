create database if not exists CompanyXYZ;
use  CompanyXYZ;

create table employee(
id int primary key,
name varchar(50),
salary int NOT NULL
);

insert into employee
(id,name,salary)
value
(1,"adam",25000),
(2,"bob",30000),
(3,"casey",40000);

drop table if exists employee;

create table employee(
 id int ,
 salary int default 25000,
 primary key(id)
);

insert into employee (id) values(101);

select * from employee;

