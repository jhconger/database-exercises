USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows.
SELECT *
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010');

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles.
SELECT *
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

# Find all the current department managers that are female.
SELECT CONCAT(first_name, ' ', last_name) as 'Manager'
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW()
      AND gender = 'F'
);

# Find all the department names that currently have female managers.
SELECT dept_name
FROM departments
         JOIN dept_manager dm on departments.dept_no = dm.dept_no
         JOIN employees e on dm.emp_no = e.emp_no
WHERE dm.to_date > NOW()
  AND gender = 'F';

# Find the first and last name of the employee with the highest salary.
SELECT CONCAT(first_name, ' ', last_name) AS '\Highest Paid'
FROM employees
         JOIN salaries s on employees.emp_no = s.emp_no
WHERE salary = (SELECT Max(salary) FROM salaries);

