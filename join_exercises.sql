USE employees;

SELECT dept_name AS Department , CONCAT(first_name, ' ', last_name) AS '\Department Manager'
FROM employees as e
JOIN dept_manager as dm on e.emp_no = dm.emp_no
JOIN departments as d on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY dept_name;

#Find the name of all departments currently managed by women.
SELECT dept_name AS Department , CONCAT(first_name, ' ', last_name) AS '\Department Manager'
FROM employees as e
JOIN dept_manager as dm on e.emp_no = dm.emp_no
JOIN departments as d on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY dept_name;

#Find the current titles of employees currently working in the Customer Service department.
SELECT title AS title, COUNT(title) AS Total
FROM titles AS t
JOIN dept_emp AS de on t.emp_no = de.emp_no
JOIN departments AS d on de.dept_no = d.dept_no
WHERE dept_name = 'Customer Service'
AND de.to_date = '9999-01-01'
AND t.to_date = '9999-01-01'
GROUP BY t.title;

#Find the current salary of all current managers.
SELECT dept_name AS '\Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager', salary AS 'Salary'
FROM departments AS d
JOIN dept_manager AS dm on dm.dept_no = d.dept_no
JOIN employees AS e on e.emp_no = dm.emp_no
JOIN salaries AS s on e.emp_no = s.emp_no
WHERE dm.to_date > CURDATE()
AND s.to_date > CURDATE()
ORDER BY d.dept_name;

#Find the names of all current employees, their department name, and their current manager's name .

# SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, dept_name AS Department, CONCAT(e.first_name, ' ', e.last_name) AS Manager
# FROM employees AS e
# JOIN dept_emp de on e.emp_no = de.emp_no
# JOIN dept_manager as dm on de.emp_no = dm.emp_no
# JOIN departments AS d on de.dept_no = d.dept_no

