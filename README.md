# Basic-Student-Management-System-

# SQL Database Project - README

## Project Overview
This project is a relational database system designed to manage students, courses, and teachers efficiently. It ensures structured storage and retrieval of academic records, including student enrollments, course details, and assigned instructors.

## Database Schema
The database consists of three main tables:
- **Students Table**: Stores student details, including their selected course and payment status.
- **Courses Table**: Maintains course-related information, including duration and student enrollment.
- **Teachers Table**: Assigns teachers to specific courses and stores their details.

## Table Structures

### Students Table
- `std_id` (Primary Key)
- `std_name`
- `std_mob_no`
- `std_address`
- `course_choosen`
- `amount_paid`

### Courses Table
- `course_id` (Primary Key)
- `course_name`
- `course_period`
- `std_id` (Foreign Key referencing Students Table)

### Teachers Table
- `teacher_id` (Primary Key)
- `teacher_name`
- `teacher_course`
- `teacher_experience`
- `course_id` (Foreign Key referencing Courses Table)
- `std_id` (Foreign Key referencing Students Table)

## SQL Queries
To populate the tables, use the following `INSERT` statements:

```sql
INSERT INTO students_info(std_id, std_name, std_mob_no, std_address, course_choosen, amount_paid) VALUES (...);

INSERT INTO courses(course_id, course_name, course_period, std_id) VALUES (...);

INSERT INTO teachers(teacher_id, teacher_name, teacher_course, teacher_experience, course_id, std_id) VALUES (...);
```

## How to Use
1. Create the database and tables using the provided schema.
2. Insert sample data into the tables using SQL queries.
3. Query the database to retrieve student, course, and teacher information.

## Future Enhancements
- Adding attendance tracking
- Implementing performance evaluation
- Generating automated reports

## Author
This project was created as part of an academic database management system initiative.

