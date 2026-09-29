-- Create a Course Registration System using Student and Course tables.
-- 1. Create both tables with suitable attributes.
-- 2. Use a Primary Key for each table and establish a Foreign Key relationship.
-- 3. Apply suitable NOT NULL, UNIQUE, DEFAULT, and CHECK constraints.
-- 4. Insert at least 5 students and 4 courses.
-- 5. Display students enrolled in a particular course.
-- 6. Update the course of a student.
-- 7. Delete a student using a suitable condition.
-- 8. Add a new column using ALTER.
-- 9. Rename one table using RENAME.
-- 10. Display the final records using SELECT.
CREATE DATABASE Course ;
USE Course;
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT CHECK (age > 0),
    dept VARCHAR(50) DEFAULT 'General'
);
CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT CHECK (credits>0),
    instructor VARCHAR(100) NOT NULL
);
CREATE TABLE Registration (
    reg_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);
INSERT INTO Student VALUES
(1, 'Rahul', 'rahul@example.com', 20, 'CS'),
(2, 'Priya', 'priya@example.com', 21, 'IT'),
(3, 'Aman', 'aman@example.com', 22, 'ECE'),
(4, 'Sneha', 'sneha@example.com', 19, 'CS'),
(5, 'Kunal', 'kunal@example.com', 23, 'ME');
INSERT INTO Course VALUES
(101, 'DBMS', 4, 'Dr. Sharma'),
(102, 'DSA', 3, 'Dr. Mehta'),
(103, 'AGILE', 3, 'Dr. Singh'),
(104, 'JAVA', 4, 'Dr. Rana');
INSERT INTO Registration VALUES
(1, 1, 101),
(2, 2, 102),
(3, 3, 103),
(4, 4, 101),
(5, 5, 104);
SELECT s.name, s.email
FROM Student s
JOIN Registration r ON s.student_id = r.student_id
JOIN Course c ON r.course_id = c.course_id
WHERE c.course_name = 'DBMS';
UPDATE Registration
SET course_id = 104
WHERE student_id = 4;
DELETE FROM Student
WHERE age > 22;
ALTER TABLE Student
ADD phone_number VARCHAR(15);
RENAME TABLE Course TO Subjects;
SELECT * FROM Student;
SELECT * FROM Subjects;
SELECT * FROM Registration;
