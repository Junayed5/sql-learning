-- Active: 1747622916822@@127.0.0.1@5432@ph
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT CHECK (age > 0),
    grade CHAR(2),
    course VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    dob DATE,
    blood_group VARCHAR(3),
    country VARCHAR(50)
);

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
    ('Elon', 'Mask', 22, 'B', 'Geography', NULL, '2001-09-12', 'B-', 'USA')



-- sort by first name

SELECT * FROM students ORDER BY first_name ASC;

-- sort by age
SELECT * FROM students ORDER BY age DESC;


-- unique using for distinct
SELECT country FROM students ORDER BY country ASC;
-- to finding unique values
SELECT DISTINCT country from students;


-- data filtering
--1 select students from the USA //where clause
SELECT * FROM students
     WHERE country = 'USA';
--2 select students with A grade in physics // and clause
SELECT * FROM students
    WHERE grade = 'A' AND course = 'Physics';

--3 select students with specific  blood group
SELECT * FROM students
    WHERE blood_group = 'A+';

--4 select students from usa or australia
SELECT * FROM students
    WHERE country = 'USA' OR country = 'Australia';
--5 select students from usa or australia and the age is 20 // or and clause
SELECT * FROM students
    WHERE (country = 'USA' OR country = 'Australia') AND age = 20;

-- select student with a grade of 'A' or 'B' in Math or Physics

SELECT * FROM students
    WHERE (grade = 'A' OR grade = 'B') AND (course = 'Math' OR course = 'Physics');

-- uppercase column

SELECT upper(first_name) from students;

-- concat

SELECT concat(first_name, ' ', last_name) as full_name FROM students;

/*
    @scalar function
    upper()
    lower()
    concat()
    length()

    @aggregate function
    AVG()
    MAX()
    MIN()
    SUM()
    COUNT()
*/

--not operator

SELECT * FROM students
    WHERE NOT country = 'USA'

-- To check is null operator

SELECT * FROM students
    WHERE email IS NULL;

SELECT COALESCE(email, 'Email not provided') FROM students;

-- filter usa uk canada data
SELECT * FROM students
    WHERE country = 'USA' OR country = 'Canada' OR country = 'UK';

-- using in 

SELECT * FROM students 
    WHERE country IN('USA', 'UK' , 'Canada');
SELECT * FROM students 
    WHERE country NOT IN('USA', 'UK' , 'Canada');


-- Between
SELECT * FROM students
    WHERE age BETWEEN 19 and 23;
SELECT * FROM students
    WHERE dob BETWEEN '2000-01-01' and '2003-01-02' ORDER BY dob;

-- LiKE

SELECT * FROM students
    WHERE first_name LIKE '%n';
SELECT * FROM students
    WHERE first_name LIKE '___n';
SELECT * FROM students
    WHERE first_name ILIKE 'a%';

-- For Pagination (LIMIT, OFFSET)

SELECT * FROM students LIMIT 5 OFFSET 2;

SELECT * FROM students 
    WHERE country IN('USA', 'UK' , 'Canada') LIMIT 4;

-- to pagination

SELECT * FROM students LIMIT 5 OFFSET 5 *0; 
SELECT * FROM students LIMIT 5 OFFSET 5 *1; 