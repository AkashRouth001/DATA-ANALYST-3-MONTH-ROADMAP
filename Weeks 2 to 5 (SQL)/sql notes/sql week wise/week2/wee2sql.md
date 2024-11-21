
Here's the updated raw Markdown file that includes the image link for the practice question and the solution link:


# SQL Notes for Students 📚

## 1. CREATE DATABASE 💾

### What is it?
The `CREATE DATABASE` statement is like building a new folder to store your data!

### Syntax:
```sql
CREATE DATABASE database_name;
USE database_name; -- Tell SQL which database to work with
```

### Example:
```sql
CREATE DATABASE testdb;
USE testdb; -- Now, we're working inside 'testdb'
```

---

## 2. CREATE TABLE 🛠️

### What is it?
`CREATE TABLE` is used to define the structure of your data (like a blueprint for a table).

### Syntax:
```sql
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    ...
);
```

### Example:
```sql
CREATE TABLE customers (
    ID INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    city CHAR(50),
    salary NUMERIC
);
```

💡 **Tip**: Use `PRIMARY KEY` to ensure each row is unique!

---

## 3. INSERT INTO ➕ 

### What is it?
The `INSERT INTO` statement lets you add data (rows) to your table.

### Syntax:
```sql
INSERT INTO table_name (column1, column2, ...) 
VALUES (value1, value2, ...);
```

### Example:
```sql
INSERT INTO customers (ID, name, age, city, salary) 
VALUES (1, 'sam', 26, 'delhi', 9000);
```

---

## 4. UPDATE ✏️

### What is it?
`UPDATE` is used to change existing data in your table. Be careful, it can modify multiple rows at once!

### Syntax:
```sql
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;
```

### Example:
```sql
UPDATE customers
SET city = 'kolkata'
WHERE ID = 1;
```

---

## 5. DELETE 🗑️

### What is it?
`DELETE` removes rows from your table. Again, use a `WHERE` clause to avoid removing everything!

### Syntax:
```sql
DELETE FROM table_name
WHERE condition;
```

### Example:
```sql
DELETE FROM customers 
WHERE ID = 3;
```

---

## 6. ALTER TABLE 🔧

### What is it?
Use `ALTER TABLE` when you need to change the structure of your table, like adding or removing columns.

### Syntax:
```sql
ALTER TABLE table_name
ADD column_name datatype;  -- To add a column
ALTER TABLE table_name
DROP COLUMN column_name;  -- To remove a column
```

### Example:
```sql
ALTER TABLE customers
ADD COLUMN college CHAR(50);  -- Add 'college' column
```

---

## 7. DROP ⛔

### What is it?
The `DROP` statement removes a table or database completely. Be careful, this is permanent!

### Syntax:
```sql
DROP TABLE table_name;   -- Drops a table
DROP DATABASE database_name;  -- Drops a database
```

### Example:
```sql
DROP DATABASE temp;  -- Drops the temp database
```

---

## 8. TRUNCATE ✂️

### What is it?
`TRUNCATE` deletes all the rows in a table but keeps the structure intact for future use.

### Syntax:
```sql
TRUNCATE TABLE table_name;
```

### Example:
```sql
TRUNCATE TABLE customers;  -- Removes all rows from the 'customers' table
```

---

## 9. DATATYPES 📊

### What are they?
Data types define what kind of data a column can store. Here are some of the most common ones:

- **INT**: Whole numbers.
- **VARCHAR(n)**: Variable-length string.
- **CHAR(n)**: Fixed-length string.
- **NUMERIC**: Numbers with decimals.
- **DATE**: Date values (e.g., '2024-11-20').

### Example:
```sql
CREATE TABLE student (
    roll INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);
```

---

## 10. SELECT 🔍

### What is it?
The `SELECT` statement is used to retrieve data from a table. It’s like asking a question to your data.

### Syntax:
```sql
SELECT column1, column2 FROM table_name;
```

### Example:
```sql
SELECT * FROM customers;  -- Selects all columns from the 'customers' table
```

---

## 11. DISTINCT ✨

### What is it?
`DISTINCT` returns only unique (non-repeating) values from a column.

### Example:
```sql
SELECT DISTINCT city FROM student;  -- Shows all unique cities
```

---

## 12. WHERE Clause 🔒

### What is it?
The `WHERE` clause is used to filter records based on specific conditions.

### Syntax:
```sql
SELECT * FROM table_name WHERE condition;
```

### Example:
```sql
SELECT * FROM student WHERE marks > 80;  -- Selects students with marks greater than 80
```

---

## 13. LIKE 🔍 (Pattern Matching)

### What is it?
`LIKE` is used to search for a specific pattern in a column. It’s great for finding strings that match a certain pattern.

### Syntax:
```sql
SELECT * FROM table_name WHERE column_name LIKE 'pattern';
```

### Example:
```sql
SELECT * FROM student WHERE name LIKE "A%";  -- Students whose name starts with 'A'
```

---

## 14. ORDER BY ⬆️⬇️

### What is it?
The `ORDER BY` clause is used to sort your data.

### Syntax:
```sql
SELECT * FROM table_name ORDER BY column_name [ASC|DESC];
```

### Example:
```sql
SELECT * FROM student ORDER BY marks DESC;  -- Orders students by marks in descending order
```

---

## 15. LIMIT 🚶

### What is it?
`LIMIT` restricts the number of records returned.

### Syntax:
```sql
SELECT * FROM table_name LIMIT number;
```

### Example:
```sql
SELECT * FROM student LIMIT 3;  -- Retrieves only the first 3 records
```

---

## 16. AND, OR, NOT ⚖️

### What are they?
These logical operators combine multiple conditions in a `WHERE` clause.

### Syntax:
```sql
SELECT * FROM table_name WHERE condition1 AND condition2;
SELECT * FROM table_name WHERE condition1 OR condition2;
SELECT * FROM table_name WHERE NOT condition;
```

### Example:
```sql
SELECT * FROM student WHERE marks > 80 AND city = "mumbai";  -- Both conditions must be true
```

---

## 17. AGGREGATE FUNCTIONS 📊

### What are they?
Aggregate functions perform calculations on multiple rows of data.

- **MAX()**: Returns the highest value.
- **MIN()**: Returns the lowest value.
- **AVG()**: Returns the average value.
- **COUNT()**: Returns the total number of records.

### Example:
```sql
SELECT MAX(marks) FROM student;  -- Returns the highest marks
SELECT COUNT(roll) FROM student;  -- Returns the total number of students
```

---

## Practice Question 🧠

Check out this practice question to challenge yourself:

![Practice Question](https://github.com/AkashRouth001/DATA-ANALYST-3-MONTH-ROADMAP/blob/44b5fbaa09b9bddb6e7a6cac1731c811a10e33cb/image/w2qu1.jpg)

---

## Solution 🔑

Find the solution for this practice question [here](https://github.com/AkashRouth001/DATA-ANALYST-3-MONTH-ROADMAP/blob/44b5fbaa09b9bddb6e7a6cac1731c811a10e33cb/Weeks%202%20to%205%20(SQL)/sql%20notes/sql%20week%20wise/week2/week2q1.sql).

---

## Final Tip: Practice Makes Perfect! 💪
The best way to learn SQL is by writing your own queries and testing them. Try modifying the examples above, or write your own queries to explore your database!
```

---

### How to Use This File on GitHub:
1. Create a new file in your GitHub repository.
2. Name the file `SQL_Notes.md`.
3. Paste the above code into the file.
4. Commit and push the file to your repository.

This will now include links to the practice question and the solution, making it easier for students to reference and engage with your content!

