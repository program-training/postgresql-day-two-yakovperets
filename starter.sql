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





CREATE TABLE Bar_ilan.Enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES Bar_ilan.Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Bar_ilan.Courses(course_id)
);
INSERT INTO Bar_ilan.Enrollments (student_id, course_id)
VALUES
    (1, 1),
    (2, 1),
	   (3, 2),
    (4, 3),
    (1, 3); 
בטעות הרצתי פעמיים, לכן מחקתי 5
DELETE FROM Bar_ilan.Enrollments
WHERE enrollment_id > 5;
select * from Bar_ilan.Enrollments;
DROP TABLE Bar_ilan.Enrollments;

CREATE TABLE Bar_ilan.TeacherCourse (
    enrollment_id SERIAL PRIMARY KEY,
    teacher_id INT,
    course_id INT,
  FOREIGN KEY (teacher_id) REFERENCES Bar_ilan.Teachers(teacher_id),
    FOREIGN KEY (course_id) REFERENCES Bar_ilan.Courses(course_id)
);
INSERT INTO Bar_ilan.TeacherCourse (teacher_id, course_id)
VALUES
    (1, 1),
    (2, 2),
	   (3, 3);
select * from Bar_ilan.TeacherCourse;
CREATE TABLE Bar_ilan.Grades (
    grade_id SERIAL PRIMARY KEY,
    enrollment_id INT,
    student_grade FLOAT,
    FOREIGN KEY (enrollment_id) REFERENCES Bar_ilan.Enrollments(enrollment_id)
);
INSERT INTO Bar_ilan.Grades (enrollment_id, student_grade)
VALUES
    (1, 90.5), 
    (2, 88.0),
    (3, 92.5),
	(4, 97.6),
    (5, 99.5);
select * from Bar_ilan.Grades;