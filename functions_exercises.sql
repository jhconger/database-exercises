USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name ='Maya';

SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name ='Maya') AND gender = 'm';

SELECT * FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e';

SELECT * FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';


SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name'FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e' ORDER BY last_name;

SELECT * FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25;

SELECT * FROM employees WHERE year(hire_date) >= 1990 AND year(hire_date) <= 1999 AND month(birth_date) = 12 AND day(birth_date) = 25;

SELECT * FROM employees WHERE year(hire_date) >= 1990 AND year(hire_date) <= 1999 AND month(birth_date) = 12 AND day(birth_date) = 25 ORDER BY hire_date DESC, birth_date;

SELECT DATEDIFF(NOW(), hire_date), first_name, last_name FROM employees WHERE year(hire_date) >= 1990 AND year(hire_date) <= 1999 AND month(birth_date) = 12 AND day(birth_date) = 25;
