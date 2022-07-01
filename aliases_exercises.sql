USE employees;


# Return 10 employees in a result set named 'full_name' in the format of 'last name, first name' for each employee.

SELECT CONCAT(emp_no,' - ',last_name,', ', first_name) as Full_Name,birth_date as DOB FROM employees LIMIT 10;