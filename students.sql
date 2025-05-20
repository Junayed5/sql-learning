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
    ('John', 'Doe', 20, 'A', 'Computer Science', 'john.doe@example.com', '2003-01-15', 'O+', 'USA'),
    ('Jane', 'Smith', 22, 'B', 'Mathematics', 'jane.smith@example.com', '2001-05-20', 'A-', 'Canada'),
    ('Alice', 'Johnson', 19, 'A', 'Physics', 'alice.johnson@example.com', '2004-03-10', 'B+', 'UK'),
    ('Bob', 'Brown', 21, 'C', 'Chemistry', 'bob.brown@example.com', '2002-11-05', 'AB+', 'Australia'),
    ('Charlie', 'Davis', 23, 'B', 'Biology', 'charlie.davis@example.com', '2000-07-30', 'O-', 'USA'),
    ('Diana', 'Garcia', 20, 'A', 'History', 'diana.garcia@example.com', '2003-02-25', 'A+', 'Mexico'),
    ('Ethan', 'Martinez', 22, 'B', 'Geography', 'ethan.martinez@example.com', '2001-09-12', 'B-', 'USA')



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