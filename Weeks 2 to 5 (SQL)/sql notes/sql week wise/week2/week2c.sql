create database college1 ;
use college1;

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
-- all select use
select * from student;
select name , marks from student;
select city from student ;
select distinct city from student;
select * from student where marks > 80;
select * from student where city = "mumbai";

-- where clasue 
select * from student where marks+5 > 80; -- arithmatic 
select * from student where marks > 80 and city = "mumbai";
select * from student where marks > 90 or city = "mumbai";
select * from student where marks between 80 and 90;
select * from student where city in ("mumbai","kolkata","pune");
select * from student where city not in ("mumbai","pune");

-- limit clasue
select * from student limit 3;
select * from student where marks> 75 limit 3;

-- oder by
select * from student order by marks asc;
select * from student order by marks desc;

-- aggregate function 
select max(marks) from student;
select min(marks) from student;
select avg(marks) from student;
select count(roll) from student;

