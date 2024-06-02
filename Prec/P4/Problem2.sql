create database if not exists shop;
use shop;

create table bill_info(
customer_id int primary key,
customer varchar(50),
mode  varchar(50) not null,
city varchar(50)
);

insert into bill_info(customer_id,customer,mode,city)values
(101, 'Olivia Barrett', 'Netbanking', 'Portland'),
(102, 'Ethan Sinclair', 'Credit Card', 'Miami'),
(103, 'Maya Hernandez', 'Credit Card', 'Seattle'),
(104, 'Liam Donovan', 'Netbanking', 'Denver'),
(105, 'Sophia Nguyen', 'Credit Card', 'New Orleans'),
(106, 'Caleb Foster', 'Debit Card', 'Minneapolis'),
(107, 'Ava Patel', 'Debit Card', 'Phoenix'),
(108, 'Lucas Carter', 'Netbanking', 'Boston'),
(109, 'Isabella Martinez', 'Netbanking', 'Nashville'),
(110, 'Jackson Brooks', 'Credit Card', 'Boston');

drop table if exists bill_info;

select * from bill_info;
select mode,count(mode)as totalsell 
from bill_info 
group by mode 
order by totalsell  asc;

