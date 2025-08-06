# 🧾 Task 2: Employee Table Management – SQL Internship Project

## 📌 Project Overview

This project is developed as part of **Task 2** for the SQL internship. It demonstrates how to create and manage an `Employee` table using **SQLite**, including various SQL operations such as:

- Creating a table with constraints and default values
- Inserting sample data
- Performing updates and deletions
- Handling `NULL` values using `COALESCE()`
- Retrieving data using `SELECT` statements

---

## 🧱 Employee Table Schema

| Column      | Data Type | Description                          | Constraint / Default       |
|-------------|-----------|--------------------------------------|----------------------------|
| `emp_id`    | INTEGER   | Unique ID of the employee            | PRIMARY KEY                |
| `emp_name`  | TEXT      | Name of the employee                 | NOT NULL                   |
| `salary`    | REAL      | Salary of the employee               | NOT NULL                   |
| `bonus`     | REAL      | Optional bonus                       | DEFAULT `NULL`             |
| `department`| TEXT      | Department of the employee           | DEFAULT `'General'`        |

---

## ✅ SQL Operations Included

### 1. Create Table
- Drops the table if it already exists
- Creates a new `Employee` table with the specified schema

### 2. Insert Records
- Insert with all fields
- Insert with required fields only (bonus and department use defaults)
- Insert with bonus set explicitly to `NULL`

### 3. Update Records
- Update Priya’s bonus to 3.00
- Set John's bonus to `NULL`

### 4. Delete Records
- Delete employee with `emp_id = 4`
- Delete employees where `bonus IS NULL`

### 5. Select Queries
- View all current employees
- Filter employees where department is `'General'`
- Use `COALESCE()` to replace `NULL` bonus values with `0.00`

---

## 🧪 Final Output (After Execution)

After all operations are performed, only **Priya** remains in the table:

