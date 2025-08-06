-- Step 1: Create Employee table
DROP TABLE IF EXISTS Employee;

CREATE TABLE Employee (
    emp_id INTEGER PRIMARY KEY,              -- Unique employee ID
    emp_name TEXT NOT NULL,                  -- Name must be provided
    salary REAL NOT NULL,                    -- Salary: float/decimal value
    bonus REAL DEFAULT NULL,                 -- Optional bonus
    department TEXT DEFAULT 'General'        -- Default department if not given
);

-- Step 2: Insert sample records

-- Insert with all values
INSERT INTO Employee (emp_id, emp_name, salary, bonus, department)
VALUES (1, 'John', 55000.50, 2.50, 'HR');

-- Insert with only required fields; bonus and department will take default values
INSERT INTO Employee (emp_id, emp_name, salary)
VALUES (2, 'Priya', 60000.00);

-- Insert with NULL explicitly set in bonus
INSERT INTO Employee (emp_id, emp_name, salary, bonus)
VALUES (3, 'Ali', 45000.00, NULL);

-- Insert with bonus and custom department
INSERT INTO Employee (emp_id, emp_name, salary, bonus, department)
VALUES (4, 'Kiran', 47000.75, 1.75, 'Finance');
-- Step 3: Update examples
UPDATE Employee
SET bonus = 3.00
WHERE emp_id = 2;
-- Set John's bonus to NULL
UPDATE Employee
SET bonus = NULL
WHERE emp_id = 1;
-- Delete an employee by ID
DELETE FROM Employee
WHERE emp_id = 4;
-- Delete all employees with NULL bonus
DELETE FROM Employee
WHERE bonus IS NULL;

-- Step 5: Select queries for verification

-- Show all remaining records
SELECT * FROM Employee;

-- Show employees with default department
SELECT * FROM Employee
WHERE department = 'General';

-- Use COALESCE to display 0 instead of NULL bonus
SELECT emp_id, emp_name, salary, COALESCE(bonus, 0.00) AS bonus_value
FROM Employee;


-- Update Priya's bonus to 3.00
