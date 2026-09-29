# Course Registration System

## 📌 Project Description

This project is a **Course Registration System** created using MySQL. It manages student information, course details, and student course registrations using relational database concepts.

The project demonstrates the use of **Primary Keys, Foreign Keys, Constraints, INSERT, SELECT, UPDATE, DELETE, ALTER, and RENAME** commands.

## 🛠️ Technologies Used

- MySQL
- SQL
- Relational Database Management System (RDBMS)

## 📂 Database Structure

The database contains three tables:

### 1. Student
Stores information about students.

| Column | Data Type | Constraint |
|---|---|---|
| student_id | INT | Primary Key |
| name | VARCHAR(100) | NOT NULL |
| email | VARCHAR(100) | UNIQUE, NOT NULL |
| age | INT | CHECK (age > 0) |
| dept | VARCHAR(50) | DEFAULT 'General' |
| phone_number | VARCHAR(15) | Added using ALTER |

### 2. Course

Stores information about available courses.

| Column | Data Type | Constraint |
|---|---|---|
| course_id | INT | Primary Key |
| course_name | VARCHAR(100) | NOT NULL |
| credits | INT | CHECK (credits > 0) |
| instructor | VARCHAR(100) | NOT NULL |

> The `Course` table is renamed to `Subjects` using the `RENAME TABLE` command.

### 3. Registration

Connects students with the courses they are enrolled in.

| Column | Data Type | Constraint |
|---|---|---|
| reg_id | INT | Primary Key |
| student_id | INT | Foreign Key |
| course_id | INT | Foreign Key |

## 🔑 Database Relationships

The `Registration` table establishes relationships between:

```text
Student ────< Registration >──── Course
```

- `Student.student_id` → Primary Key
- `Course.course_id` → Primary Key
- `Registration.student_id` → Foreign Key
- `Registration.course_id` → Foreign Key

## ✨ Features

This project demonstrates:

1. Creating a database.
2. Creating Student and Course tables.
3. Creating a Registration table.
4. Using Primary Keys.
5. Establishing Foreign Key relationships.
6. Applying `NOT NULL` constraints.
7. Applying `UNIQUE` constraints.
8. Applying `DEFAULT` constraints.
9. Applying `CHECK` constraints.
10. Inserting student and course records.
11. Displaying students enrolled in a particular course.
12. Updating a student's course.
13. Deleting a student based on a condition.
14. Adding a new column using `ALTER TABLE`.
15. Renaming a table using `RENAME TABLE`.
16. Displaying final records using `SELECT`.

## 📊 Sample Data

### Students

The database contains 5 students:

- Rahul
- Priya
- Aman
- Sneha
- Kunal

### Courses

The database contains 4 courses:

- DBMS
- DSA
- AGILE
- JAVA

## 🔍 Example Query

To display students enrolled in DBMS:

```sql
SELECT s.name, s.email
FROM Student s
JOIN Registration r ON s.student_id = r.student_id
JOIN Course c ON r.course_id = c.course_id
WHERE c.course_name = 'DBMS';
```

## 🔄 Operations Performed

### Update

Student with ID `4` is moved to course `104`:

```sql
UPDATE Registration
SET course_id = 104
WHERE student_id = 4;
```

### Delete

Students older than 22 are deleted:

```sql
DELETE FROM Student
WHERE age > 22;
```

### Add Column

A phone number column is added:

```sql
ALTER TABLE Student
ADD phone_number VARCHAR(15);
```

### Rename Table

The `Course` table is renamed to `Subjects`:

```sql
RENAME TABLE Course TO Subjects;
```

## ▶️ How to Run

1. Install **MySQL**.
2. Open MySQL Workbench or another MySQL client.
3. Create a new SQL query.
4. Copy the SQL code into the query window.
5. Execute the SQL statements in order.
6. Use the final `SELECT` statements to view the records.

## 📁 Project Files

```text
Course-Registration-System/
│
├── database.sql
├── queries.sql
├── README.md
└── screenshots/
```

## 👨‍💻 Author

**Kunal Chaudhary**
