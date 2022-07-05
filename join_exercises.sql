USE join_test_db;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
                                             ('bob', 'bob@example.com', 1),
                                             ('joe', 'joe@example.com', 2),
                                             ('sally', 'sally@example.com', 3),
                                             ('adam', 'adam@example.com', 3),
                                             ('jane', 'jane@example.com', null),
                                             ('mike', 'mike@example.com', null);




SELECT users.name as user_name, roles.name as role_name
FROM users JOIN roles ON users.role_id = roles.id;




# Using the example in the Associative Table Joins section as a guide, write a query
# that shows each department along with the name of the current manager for that department.

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees.employees as e
         JOIN employees.dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN employees.departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;


SELECT DISTINCT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees.employees as e
         JOIN employees.dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN employees.departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01';



# Find the name of all departments currently managed by women.

SELECT DISTINCT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees.employees as e
         JOIN employees.dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN employees.departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND gender = 'F';



# Find the current titles of employees currently working in the
# Customer Service department.

SELECT ti.title , Count(ti.title)
FROM employees.employees as E
        JOIN employees.titles as ti
            ON E.emp_no = ti.emp_no
        JOIN employees.departments as de


WHERE to_date = '9999-01-01' AND de.dept_name = 'Customer Service';

SELECT COUNT(users.name) as user_name, roles.name as role_name
FROM users
JOIN roles
    ON users.role_id = roles.id
GROUP BY users.name,roles.name;


# Find the current salary of all current managers.

SELECT DISTINCT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name, se.salary
FROM employees.employees as e
         JOIN employees.dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN employees.departments as d
              ON d.dept_no = de.dept_no
        RIGHT JOIN employees.salaries as se
              ON se.salary = de.emp_no
WHERE de.to_date = '9999-01-01';

