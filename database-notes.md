### SQL (Structured Query Language)

SQL is used to perform database operations. Based on these operations, SQL is divided into four main categories:

1. **DDL (Data Definition Language)**
2. **DML (Data Manipulation Language)**
3. **DCL (Data Control Language)**
4. **TCL (Transaction Control Language)**

### Commands of DDL:

i) **CREATE**: The `CREATE` command is used to create a new database object.
   - Example: `CREATE TABLE table_name;`
   - Example: `CREATE VIEW view_name;`
   - Example: `CREATE USER user_name IDENTIFIED BY password;`

ii) **ALTER**: The `ALTER` command is used to modify the structure of a database object.

iii) **DROP**: The `DROP` command is used to delete database objects.

iv) **TRUNCATE**: The `TRUNCATE` command deletes all data from a database object.

v) **BACKUP**: The `BACKUP` command is used to take a backup of the database.

vi) **RESTORE**: The `RESTORE` command is used to reconstruct the database from its backup.

### Commands of DML:

i) **INSERT**: The `INSERT` command is used to insert records into a database object (table or view).

ii) **DELETE**: The `DELETE` command is used to delete records from a database object (delete entire row).

iii) **UPDATE**: The `UPDATE` command is used to modify records in a database object.

iv) **SELECT**: The `SELECT` command is used to select records from a database object.

### Commands of DCL:

i) **GRANT**: The `GRANT` command is used to give rights to a database user.

ii) **REVOKE**: The `REVOKE` command is used to take away rights from a database user. It is the opposite of the `GRANT` command.

iii) **RENAME**: The `RENAME` command is used to change the name of a database object.

### Commands of TCL:

i) **COMMIT**: The `COMMIT` command is used to save a transaction.

ii) **ROLLBACK**: The `ROLLBACK` command is used to undo a transaction.

---

### Using the `CREATE` Command to Create a New User:

Syntax:
```sql
CREATE USER 'user_name' IDENTIFIED BY 'password';
```

Example:
```sql
CREATE USER app2022 IDENTIFIED BY test;
```

### Using the `GRANT` Command to Give Rights to a User:

Syntax:
```sql
GRANT grant_name TO user_name;
```

Example:
```sql
GRANT dba TO app2022;
```

---

### Using the `CREATE` Command to Create a New Table:

A table is a collection of rows and columns. Rows are called tuples, and columns are called attributes.

**Syntax to create a table:**
```sql
CREATE TABLE <table_name>
(
    <column_name1> <datatype>,
    <column_name2> <datatype>,
    <column_name3> <datatype>,
    <column_name4> <datatype>    
);
```

**Table Name:** `employee`

- `empid`: `int` PRIMARY KEY
- `empname`: `varchar2(30)`
- `department`: `varchar2(20)`
- `salary`: `int`

**Primary Key:** A primary key is a field in a table used to identify each record uniquely. It is atomic and not null.

**Example:**
```sql
CREATE TABLE employee
(
    empid int PRIMARY KEY,
    empname varchar2(30),
    department varchar2(20),
    salary int
);
```

---

### Using the `INSERT` Command to Insert Records into a Table:

**Syntax:**
```sql
INSERT INTO <table_name> VALUES(<value1>, <value2>, <value3>, <value4>);
```

**Example:**
```sql
INSERT INTO employee VALUES (1001, 'Ankit Kumar', 'Development', 45000);
INSERT INTO employee VALUES (1002, 'Ajay', 'Management', 80000);
INSERT INTO employee VALUES (1003, 'Nisha', 'HR', 40000);
INSERT INTO employee VALUES (1004, 'Shikha', 'Development', 50000);
```

---

### Using the `SELECT` Command to Select Records from a Table:

**Example:**
```sql
SELECT * FROM employee;
```

### Using the `INSERT` Command to Insert Data into Specific Columns of a Table:

**Syntax:**
```sql
INSERT INTO <table_name> (<column1>, <column2>, <column3>, <column4>) VALUES (<value1>, <value2>, <value3>, <value4>);
```

**Example:**
```sql
INSERT INTO employee(empid, empname, department) VALUES (1005, 'Ritesh', 'Development');
```

---

### Using the `SELECT` Command:

1. **Select All Columns of a Table:**
   ```sql
   SELECT * FROM <table_name>;
   SELECT * FROM employee;
   ```

2. **Select Specific Columns:**
   ```sql
   SELECT <column1>, <column2> FROM <table_name>;
   SELECT empid, empname, salary FROM employee;
   ```

### Using the `WHERE` Clause:

The `WHERE` clause is used to specify a condition in an SQL statement.

**Example:**
```sql
SELECT * FROM <table_name> WHERE <condition>;
SELECT * FROM employee WHERE empid = 1001;
```

### Operators in SQL:

- `=`: Equality
- `>`: Greater than
- `<`: Less than
- `<=`: Less than or equal to
- `>=`: Greater than or equal to
- `<>`: Not equal
- `IN`: Compare value in given values
- `BETWEEN`: Check whether a given value is within a given range
- `LIKE`: Used for pattern matching

---

### Using the `DELETE` Command to Delete a Record from a Table:

**Syntax:**
```sql
DELETE FROM <table_name> WHERE <condition>;
```

**Example:**
```sql
DELETE FROM employee WHERE empid = 1001;
```

---

### Using the `UPDATE` Command to Modify a Record in a Table:

**Syntax:**
```sql
UPDATE <table_name> SET <column1> = <value1>, <column2> = <value2> WHERE <condition>;
```

**Example:**
```sql
UPDATE employee SET salary = 30000 WHERE empid = 1005;
```

---

### Using the `TRUNCATE` Command to Delete All Records from a Table:

**Syntax:**
```sql
TRUNCATE TABLE <table_name>;
```

**Example:**
```sql
TRUNCATE TABLE employee;
```

---

### Using the `DROP` Command:

**Syntax:**
```sql
DROP TABLE <table_name>;
```

**Example:**
```sql
DROP TABLE employee;
```

---

### Using the `ALTER` Command to Add a New Column:

**Syntax:**
```sql
ALTER TABLE <table_name> ADD <column_name> <data_type>;
```

**Example:**
```sql
ALTER TABLE login ADD usertype varchar2(20);
```

### Using the `ALTER` Command to Delete a Column:

**Syntax:**
```sql
ALTER TABLE <table_name> DROP COLUMN <column_name>;
```

**Example:**
```sql
ALTER TABLE login DROP COLUMN usertype;
```

### Using the `ALTER` Command to Modify a Column:

**Syntax:**
```sql
ALTER TABLE <table_name> MODIFY <column_name> <data_type>;
```

**Example:**
```sql
ALTER TABLE login MODIFY password varchar2(10);
```

### Using the `ALTER` Command to Rename a Column:

**Syntax:**
```sql
ALTER TABLE <table_name> RENAME COLUMN <old_column_name> TO <new_column_name>;
```

**Example:**
```sql
ALTER TABLE login RENAME COLUMN password TO passcode;
```

### Using the `RENAME` Command to Change the Name of a Database Object:

**Syntax:**
```sql
RENAME <old_name> TO <new_name>;
```

**Example:**
```sql
RENAME login TO logininfo;
```

### Command to View All Tables in a User's Database:

**Example:**
```sql
SELECT * FROM tab;
```

---

### SQL Functions:

SQL has many built-in functions that are used with the `SELECT` command.

**sum()**: The `sum()` function is used to find the sum of values in a given column.

**Example:**
```sql
SELECT SUM(salary) "Total Salary" FROM employee;
```

**max()**: The `max()` function is used to find the maximum value in a given column.

**Example:**
```sql
SELECT MAX(salary) "Maximum Salary" FROM employee;
```

**min()**: The `min()` function is used to find the minimum value in a given column.

**Example:**
```sql
SELECT MIN(salary) "Minimum Salary" FROM employee;
```

**count()**: The `count()` function is used to count the number of rows in a table.

**Example:**
```sql
SELECT COUNT(*) "Number of Rows" FROM employee;
```

**upper()**: The `upper()` function converts string data into uppercase.

**Example:**
```sql
SELECT UPPER(empname) "Employee Name" FROM employee;
```

**lower()**: The `lower()` function converts string
