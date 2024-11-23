create database week3b;
use week3b;
-- JOIN
CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);
-- Insert values into the student table
INSERT INTO student (id, name)
VALUES 
(101, 'adam'),
(102, 'bob'),
(103, 'casey');

CREATE TABLE course(
	id INT PRIMARY KEY,
    course VARCHAR(50)
);
-- Insert values into the course table
INSERT INTO course (id, course)
VALUES 
(102, 'english'),
(105, 'math'),
(103, 'science'),
(107, 'computer science');
-- inner join
select *
from student  -- alish mane nokol nam student = s (as)
inner join course
on student.id = course.id;

-- left join
select * 
from student as s 
left join course as c
on s.id = c.id;

-- right join
select * 
from student as s 
right join course as c
on s.id = c.id;

-- full join (is not present in my sql)
-- where we use union

select * 
from student as s 
left join course as c
on s.id = c.id
union
select * 
from student as s 
right join course as c
on s.id = c.id;

-- left exclusive join
select * 
from student as s 
left join course as c
on s.id = c.id
where c.id is null;

-- right exclusive join
select * 
from student as s 
right join course as c
on s.id = c.id
where s.id is null;

-- self join
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
select  a.name,m.name
from employee as a
join employee as m
on a.id = m.manager_id;

