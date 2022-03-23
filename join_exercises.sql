USE employees;

SELECT dept_name AS Department , CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM employees as e
JOIN dept_manager as dm on e.emp_no = dm.emp_no
JOIN departments as d on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY dept_name;