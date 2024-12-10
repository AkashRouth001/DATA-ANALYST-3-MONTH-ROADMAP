CREATE DATABASE testdb;
USE testdb; -- with this we declar that we us ethis database 

CREATE TABLE customers ( -- this is create table
    ID INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    city CHAR(50),
    salary NUMERIC
);
-- enter the value in the table 
INSERT INTO customers (ID, name, age, city, salary) 
VALUES 
(1, 'sam', 26, 'delhi', 9000),
(2, 'ram', 19, 'bangalore', 11000),
(3, 'pam', 31, 'mumbai', 6000),
(4, 'jam', 42, 'pune', 10000);
SELECT  * FROM customers; -- to see the table 

UPDATE customers -- with this update the present value of table
SET city ='kolkata'
WHERE ID = 1;

DELETE FROM customers 
WHERE ID = 3;
-- alter table
ALTER TABLE customers
ADD COLUMN college CHAR(50); -- Add new column

-- Update each row with college values
UPDATE customers SET college = 'aot' WHERE ID = 1;
UPDATE customers SET college = 'ju' WHERE ID = 2;
UPDATE customers SET college = 'cu' WHERE ID = 3;
UPDATE customers SET college = 'ku' WHERE ID = 4;

ALTER TABLE customers
DROP COLUMN name;