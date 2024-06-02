CREATE DATABASE if not exists collage;
USE collage;

CREATE TABLE student (
    id INT,
    name VARCHAR(50),
    age INT NOT NULL,
    city varchar(50),
     PRIMARY KEY(id,name)
);

INSERT INTO student VALUES (1, 'Akil', 24,"dhaka");
INSERT INTO student VALUES (2, 'Alif', 22,"dhaka");
INSERT INTO student VALUES (3, 'Nishat', 23,"dhaka");
INSERT INTO student VALUES (4, 'Abir', 22,"dhaka");

SELECT * FROM student;

drop table if exists student;

CREATE TABLE Teacher (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO Teacher VALUES (1, 'Akib Zaman');
INSERT INTO Teacher VALUES (2, 'Tarak');

show tables;

insert into Teacher
(id,name)
value
(3,"bosir"),
(4,"Mahamud");

SELECT * FROM Teacher;


create table temp1(
 id int unique
);

insert into temp1 values (181);
insert into temp1 values (181);

