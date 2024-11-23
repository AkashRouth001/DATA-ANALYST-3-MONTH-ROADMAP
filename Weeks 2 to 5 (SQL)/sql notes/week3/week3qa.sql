create database week3;
use week3;
-- question 1
create table student (
	roll int primary key,
    name varchar(50),
    marks int not null,
    grade varchar(1),
    city varchar(20)
);
insert into  student
(roll,name,marks,grade,city)
values
(101,"anil",78,"c","pune"),
(102,"bhumika",93,"a","mumbai"),
(103,"chetan",85,"b","mumbai"),
(104,"dhruv",96,"a","delhi"),
(105,"emanuel",12,"f","delhi"),
(106,"fasah",83,"b","delhi");
select * from student;

select city , avg(marks) 
from student 
group by city 
order by avg(marks) asc;

-- question 2
create table q2(
customer_id int primary key,
customer varchar(50),
mode varchar(50),
city varchar(50)
);

INSERT INTO q2 (customer_id, customer, mode, city)
VALUES
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

select * from q2;

-- ans
select mode , count(customer_id)
from q2
group by mode;






