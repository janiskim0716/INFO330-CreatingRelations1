CREATE TABLE student_courses (
  studentid INTEGER REFERENCES students(id),
  course VARCHAR(40) REFERENCES courses(code),
  grade FLOAT DEFAULT NULL,
  PRIMARY KEY (studentid, course)
);

INSERT INTO student_courses (studentid, course) 
VALUES 
(1, 'INFO330A'),
(1, 'INFO448A'),
(1, 'INFO314'),
(3, 'BAW0100'),
(3, 'BAW100A'),
(2, 'INFO330A'),
(2, 'INFO449A'),
(4, 'BAW0100');