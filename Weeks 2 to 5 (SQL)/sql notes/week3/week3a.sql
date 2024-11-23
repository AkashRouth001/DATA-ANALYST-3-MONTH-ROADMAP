create database college2 ;
use college2;
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

-- group by clause
select city  from student group by city;
select city , count(name) from student group by city;

-- having
select city,count(name)  from student group by city having max(marks)>90;
-- select city,count(name)  from student group by city where max(marks)>90;
-- >  where clause use for all "ROW" but 'HAVING' use for "GROUP"

select city
from student 
where grade ='a'
group by city
having max(marks)>90;

-- update
update student 
set grade = "o" where grade = "a";
-- some time "update" gives error 
-- in thee sql there is a  "safe mode" which do dis
set sql_safe_updates = 0; -- off the safe mode
set sql_safe_updates = 1; -- on the safe mode
-- delete
delete from student where marks < 33;
-- drop table teacher ;
-- fk

create table dept (
	id int primary key,
    name varchar(50)
);
insert into dept
(id,name)
values
(101,"english"),
(102,"bengali");
select * from dept;

update dept set id = 103 where id = 102;

create table teacher(
	id int primary key,
    name varchar(50),
    dept_id int,
    foreign key(dept_id) references dept(id)
    on update cascade
    on delete cascade
);
insert into teacher
(id,name,dept_id)
values
(101,"akash",101),
(102,"tanu",102);
select * from teacher;

