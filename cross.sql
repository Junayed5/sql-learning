CREATE TABLE employees(
    emp_id INT,
    emp_name VARCHAR(50),
    dep_id INT
);
CREATE TABLE departments(
    dep_id INT,
    dep_name VARCHAR(50)
);

INSERT INTO employees VALUES(1, 'John doe', 101), (2, 'Jane smith', 102);
INSERT INTO departments VALUES(101, 'Human Resource'), (102, 'Marketing')

SELECT * FROM employees;

SELECT * FROM departments;

-- CROSS JOIN

SELECT * FROM employees
    CROSS JOIN departments;
-- Natural JOIN
SELECT * FROM employees
    NATURAL JOIN departments;