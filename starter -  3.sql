CREATE TABLE Bar_ilan.StudyGroups (
    group_id SERIAL PRIMARY KEY,
    group_name VARCHAR
);
INSERT INTO Bar_ilan.StudyGroups (group_name)
VALUES
    ('Group A'),
    ('Group B'),
    ('Group C');
CREATE TABLE Bar_ilan.StudentStudyGroups (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT,
    group_id INT,
    FOREIGN KEY (student_id) REFERENCES Bar_ilan.Students(student_id),
    FOREIGN KEY (group_id) REFERENCES Bar_ilan.StudyGroups(group_id)
);
INSERT INTO Bar_ilan.StudentStudyGroups (student_id, group_id)
VALUES
  (1,1),
  (2,1),
  (3,2),
  (4,2);
לוודא שתלמיד לא יהיה רשום פעמיים לאותו קורס
ALTER TABLE Bar_ilan.Enrollments
ADD CONSTRAINT unique_enrollment UNIQUE (student_id, course_id);
שמורה לא יהיה רשום פעמיים לאותו הקורס
ALTER TABLE Bar_ilan.teachercourse
ADD CONSTRAINT unique_teachercourse UNIQUE (teacher_id, course_id);
שתלמיד לא יהיה רשום פעמיים לאותו הגרופ
ALTER TABLE Bar_ilan.studentstudygroups
ADD CONSTRAINT unique_studentstudygroups UNIQUE (student_id, group_id);

 SELECT * FROM Bar_ilan.courses;
 SELECT * FROM Bar_ilan.students;
  SELECT * FROM Bar_ilan.teachers;
   SELECT * FROM Bar_ilan.teachercourse;
    SELECT * FROM Bar_ilan.enrollments;
	 SELECT * FROM Bar_ilan.grades;
	 SELECT * FROM Bar_ilan.studygroups;
	  SELECT * FROM Bar_ilan.StudentStudyGroups;