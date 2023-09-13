CREATE SCHEMA Bar_ilan;

CREATE TABLE Bar_ilan.students (
    student_id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    date_of_birth DATE,
    email TEXT UNIQUE
);
INSERT INTO Bar_ilan.Students (first_name, last_name, date_of_birth, email)
VALUES
    ('John', 'Doe', '1995-03-15', 'john.doe@example.com'),
    ('Jane', 'Smith', '1998-07-21', 'jane.smith@example.com'),
    ('Michael', 'Johnson', '1991-09-10', 'michael.johnson@example.com'),
    ('Emily', 'Davis', '1993-03-25', 'emily.davis@example.com');

CREATE TABLE Bar_ilan.Teachers (
    teacher_id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    date_of_birth DATE,
    email TEXT UNIQUE,
    department TEXT,
    hire_date DATE
);
INSERT INTO Bar_ilan.Teachers (first_name, last_name, date_of_birth, email, department, hire_date)
VALUES
    ('Professor', 'Anderson', '1975-04-08', 'prof.anderson@example.com', 'Computer Science', '2010-08-15'),
    ('Dr. Sarah', 'Wilson', '1980-12-20', 'sarah.wilson@example.com', 'Mathematics', '2015-05-02'),
    ('Mr. James', 'Brown', '1978-06-14', 'james.brown@example.com', 'History', '2009-11-11');

CREATE TABLE Bar_ilan.Courses (
    course_id SERIAL PRIMARY KEY,
    course_name TEXT NOT NULL,
    department TEXT,
    credits NUMERIC
);
INSERT INTO Bar_ilan.Courses (course_name, department, credits)
VALUES
    ('Introduction to Programming', 'Computer Science', 3),
    ('Calculus I', 'Mathematics', 4),
    ('World History', 'History', 3);
select * from Bar_ilan.Students;
select * from Bar_ilan.Teachers;
select * from Bar_ilan.Curses;
