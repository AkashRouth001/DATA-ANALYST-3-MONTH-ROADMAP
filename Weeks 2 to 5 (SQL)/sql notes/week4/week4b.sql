create database week4b;
use week4b;

-- TIMESTAMP
/*SHOW TIMEZONE
SELECT NOW()
SELECT TIMEOFDAY()
SELECT CURRENT_TIME
SELECT CURRENT_DATE; */


-- 1. Check MySQL Version (to ensure compatibility with CURRENT_TIMESTAMP)
SELECT VERSION() AS MySQL_Version;

-- 2. Test a Basic Query (to confirm the connection is active)
SELECT 1 AS Connection_Test;

-- 3. Using CURRENT_TIMESTAMP
-- This should work in MySQL:
SELECT CURRENT_TIMESTAMP AS Current_Timestamp;

-- Alternative Syntax for CURRENT_TIMESTAMP
SELECT NOW() AS Now_Function;
SELECT CURRENT_TIMESTAMP() AS Current_Timestamp_Function;

-- 4. Check Date and Time Separately
SELECT CURRENT_DATE AS Current_Date;
SELECT CURRENT_TIME AS Current_Time;

-- 5. Using Alias with Backticks (in case of keyword conflicts)
SELECT CURRENT_TIMESTAMP AS `Current_Timestamp`;

-- 6. Check Time Zone Settings
-- Show the global and session timezone:
SELECT @@global.time_zone AS Global_Timezone, @@session.time_zone AS Session_Timezone;

-- Set the session timezone (example: UTC):
SET time_zone = '+00:00';

-- Verify the timezone change:
SELECT @@session.time_zone AS Updated_Session_Timezone;

-- 7. Create and Use a Table with a TIMESTAMP Column
-- Create a table with a TIMESTAMP column:
CREATE TABLE example_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert a row to test the TIMESTAMP:
INSERT INTO example_table () VALUES ();

-- Retrieve data from the table:
SELECT * FROM example_table;

-- 8. Additional Alternatives for Time Functions
-- Fetch only the date and time separately using NOW():
SELECT DATE(NOW()) AS Only_Date, TIME(NOW()) AS Only_Time;

-- Fetch UNIX timestamp:
SELECT UNIX_TIMESTAMP() AS Unix_Timestamp;


-- WINDO FUNCTION 



















