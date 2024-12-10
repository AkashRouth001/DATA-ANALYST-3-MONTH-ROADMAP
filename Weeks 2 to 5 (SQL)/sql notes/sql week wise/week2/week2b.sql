CREATE DATABASE temp;
drop database temp;

CREATE DATABASE college;
CREATE DATABASE IF NOT EXISTS college; -- if this data base is not exist then create this db

USE college;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

INSERT INTO student VALUES (1,"AMAN",26);
INSERT INTO student VALUES (2,"Akash",26);

SHOW TABLES;

SELECT * FROM  student;
DROP TABLE student;
-- ..................
CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student
(rollno,name)
VALUES
(101,"akash"),
(102,"tanu"),
(103,"honu");
INSERT INTO student VALUES (104,"AMAN");

SELECT * FROM student;