USE employees;

# Update your queries for employees whose names start and end with 'E'.
# Use concat() to combine their first and last name together as a single column in your results.

SELECT CONCAT(first_name,' ',last_name) FROM employees WHERE last_name LIKE ('E%') AND last_name LIKE ('%E') ORDER BY emp_no;

# Find all employees born on Christmas — 842 rows.

SELECT CONCAT(first_name,' ',last_name,' was Born on : ',birth_date) FROM employees WHERE birth_date LIKE ('%-12-25');

# Find all employees hired in the 90s and born on Christmas — 362 rows.

SELECT CONCAT(first_name,' ',last_name,' was Born on : ',birth_date,' And Hired in the 90s') FROM employees WHERE
birth_date LIKE ('%-12-25')AND hire_date between '1990-1-01' AND '1999-12-30';


# Change the query for employees hired in the 90s and born on Christmas such that the first
# result is the oldest employee who was hired last. It should be Khun Bernini.


SELECT CONCAT(first_name,' ',last_name,' was Born on : ',birth_date,' And Hired in the 90s') FROM employees WHERE
 birth_date LIKE ('%-12-25')AND hire_date between '1990-1-01' AND '1999-12-30' ORDER BY birth_date,hire_date DESC;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have
# been working at the company (Hint: You might also need to use now() or curdate()).

SELECT CONCAT(first_name,' ',last_name )AS full_name, datediff(curdate(),hire_date) FROM employees ORDER BY first_name,hire_date limit 50;


#
#
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = ('M')  ORDER BY first_name,last_name;

SELECT * FROM employees WHERE last_name LIKE ('E%') AND last_name LIKE ('%E') ORDER BY emp_no;

SELECT * FROM employees WHERE last_name LIKE ('q') AND last_name NOT IN ('%qu%');