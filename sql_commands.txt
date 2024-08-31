SQL: Structured Query Language

SQL is used to perform database operations. It is divided into four main categories:

1. DDL (Data Definition Language)
2. DML (Data Manipulation Language)
3. DCL (Data Control Language)
4. TCL (Transaction Control Language)

Commands of DDL:
----------------
1. CREATE: Used to create a new database object.
   - Syntax: CREATE TABLE table_name (...);
   - Example: CREATE TABLE employee (...);

2. ALTER: Used to modify the structure of database objects.
   - Syntax: ALTER TABLE table_name MODIFY column_name data_type;
   - Example: ALTER TABLE employee ADD COLUMN age INT;

3. DROP: Used to delete database objects.
   - Syntax: DROP TABLE table_name;
   - Example: DROP TABLE employee;

4. TRUNCATE: Deletes all records from a table.
   - Syntax: TRUNCATE TABLE table_name;
   - Example: TRUNCATE TABLE employee;

Commands of DML:
----------------
1. INSERT: Inserts records into a table.
   - Syntax: INSERT INTO table_name VALUES (...);
   - Example: INSERT INTO employee VALUES (1001, 'Ankit', ...);

2. DELETE: Deletes records from a table.
   - Syntax: DELETE FROM table_name WHERE condition;
   - Example: DELETE FROM employee WHERE empid=1001;

3. UPDATE: Modifies existing records in a table.
   - Syntax: UPDATE table_name SET column_name = value WHERE condition;
   - Example: UPDATE employee SET salary = 50000 WHERE empid=1001;

4. SELECT: Retrieves records from a table.
   - Syntax: SELECT * FROM table_name;
   - Example: SELECT * FROM employee;

Commands of DCL:
----------------
1. GRANT: Gives specific privileges to a user.
   - Syntax: GRANT privilege TO user_name;
   - Example: GRANT SELECT ON employee TO user1;

2. REVOKE: Takes back privileges from a user.
   - Syntax: REVOKE privilege FROM user_name;
   - Example: REVOKE SELECT ON employee FROM user1;

Commands of TCL:
----------------
1. COMMIT: Saves the current transaction.
   - Syntax: COMMIT;

2. ROLLBACK: Undoes the current transaction.
   - Syntax: ROLLBACK;

SQL Functions:
--------------
1. SUM(): Calculates the sum of values in a column.
   - Example: SELECT SUM(salary) "Total Salary" FROM employee;

2. MAX(): Finds the maximum value in a column.
   - Example: SELECT MAX(salary) "Maximum Salary" FROM employee;

3. MIN(): Finds the minimum value in a column.
   - Example: SELECT MIN(salary) "Minimum Salary" FROM employee;

4. COUNT(): Counts the number of rows in a table.
   - Example: SELECT COUNT(*) "Number of Rows" FROM employee;

5. UPPER(): Converts string data to uppercase.
   - Example: SELECT UPPER(empname) "Employee Name" FROM employee;

6. LOWER(): Converts string data to lowercase.
   - Example: SELECT LOWER(empname) "Employee Name" FROM employee;

7. AVG(): Calculates the average of values in a column.
   - Example: SELECT AVG(salary) "Average Salary" FROM employee;

Date Functions in SQL:
----------------------
- SYSDATE(): Returns the current date and time.
- DATE_ADD(): Adds a specified time interval to a date.
- DATE_SUB(): Subtracts a specified time interval from a date.

Example:
```sql
SELECT SYSDATE() FROM DUAL;
SELECT DATE_ADD(SYSDATE(), INTERVAL 5 DAY) FROM DUAL;
SELECT DATE_SUB(SYSDATE(), INTERVAL 2 MONTH) FROM DUAL;
```
