



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