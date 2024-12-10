create database week4a;
use week4a;
-- union
CREATE TABLE employee(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

INSERT INTO employee (id, name, manager_id)
VALUES
(101, 'adam', 103),
(102, 'bob', 104),
(103, 'casey', NULL),
(104, 'donald', 103);
select * from employee;

select name from employee
union
select name from employee;

-- union all
select name from employee
union all
select name from employee;

-- SUB QUERIES

-- > under WHERE
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

-- Q> Create a table of student who get the number more than average marks
/*
-- normal method 
select avg(marks) from student;
select name , marks
from student 
where marks > 74.5; */

-- using sub 
select name , marks
from student 
where marks > (select avg(marks) from student);

-- Q> student even roll number 
select name , roll
from student 
where roll in (select roll from student where roll % 2 =0  );

-- under FROM

-- q> find student with max marks and from delhi
select max(marks)
from (select * from student where city = 'delhi') as temp;

