CREATE TABLE employees(
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) not NULL,
    department_name VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees (employee_name, department_name, salary, hire_date) VALUES 
('Alice Johnson', 'Sales', 55000.00, '2020-03-15'),
('Bob Smith', 'Marketing', 62000.00, '2019-07-22'),
('Carol White', 'Engineering', 85000.00, '2021-01-10'),
('David Brown', 'Engineering', 90000.00, '2018-05-30'),
('Eva Green', 'Human Resources', 48000.00, '2022-06-01'),
('Frank Black', 'Sales', 57000.00, '2020-10-12'),
('Grace King', 'Finance', 75000.00, '2017-11-03'),
('Henry Adams', 'Engineering', 92000.00, '2016-09-28'),
('Isabel Lee', 'Marketing', 60000.00, '2019-12-17'),
('Jack Turner', 'Sales', 59000.00, '2021-04-05'),
('Karen Scott', 'Human Resources', 50000.00, '2022-02-18'),
('Liam Walker', 'Finance', 78000.00, '2015-03-23'),
('Mia Carter', 'Engineering', 94000.00, '2020-08-14'),
('Noah Martinez', 'Sales', 61000.00, '2018-06-11'),
('Olivia Robinson', 'Marketing', 63000.00, '2017-12-09'),
('Paul Young', 'Engineering', 91000.00, '2019-09-29'),
('Quinn Allen', 'Finance', 77000.00, '2021-07-26'),
('Rachel Wright', 'Human Resources', 52000.00, '2020-01-30'),
('Samuel Hall', 'Engineering', 89000.00, '2016-04-25'),
('Tina Hill', 'Marketing', 65000.00, '2018-11-19'),
('Umar Clark', 'Sales', 62000.00, '2023-05-13'),
('Victoria Lewis', 'Finance', 76000.00, '2022-09-06'),
('Walter Perez', 'Engineering', 87000.00, '2017-10-17'),
('Xenia Ramirez', 'Human Resources', 51000.00, '2021-03-04'),
('Yusuf Baker', 'Marketing', 64000.00, '2020-12-21'),
('Zara Morris', 'Sales', 60000.00, '2019-08-27'),
('Amy Mitchell', 'Finance', 79000.00, '2015-06-29'),
('Brian Kelly', 'Engineering', 88000.00, '2018-02-13'),
('Chloe Reed', 'Human Resources', 53000.00, '2023-01-09'),
('Dylan Ward', 'Marketing', 67000.00, '2022-11-11'),
('Ella Gray', 'Engineering', 93000.00, '2019-04-16');

SELECT * FROM employees;


-- //! A subquery is nested query within another SQL statement

-- Retrieve all employees whose salary is greater than the highest salary of sales department

SELECT * FROM employees WHERE department_name = 'Sales';

SELECT max(salary) FROM employees WHERE department_name = 'Sales';

SELECT * FROM employees WHERE salary > (SELECT max(salary) FROM employees WHERE department_name = 'Sales')

SELECT department_name, sum(salary) FROM employees GROUP BY department_name