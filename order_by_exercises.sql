USE employees;



--  Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = ('M')  ORDER BY first_name,last_name;


--  Find all employees whose last name starts with 'E' — 7,330 rows.

SELECT * FROM employees WHERE last_name LIKE ('E%') AND last_name LIKE ('%E') ORDER BY emp_no;
--  Find all employees with a 'q' in their last name — 1,873 rows.

SELECT * FROM employees WHERE last_name LIKE ('q') AND last_name NOT IN ('%qu%');