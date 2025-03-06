-- create database
create database studentdata;

-- use database
use studentdata;

-- create table students_info
create table students_info(
std_id int primary key,
std_name varchar(20) not null,
std_mob_no bigint unique,
std_address varchar(20) not null,
course_choosen varchar(20)
);

-- increasing varchar of address
alter table students_info modify column std_address varchar(255);

-- inserting new column
ALTER TABLE students_info add column amount_paid int not null;

create table courses(
course_id int primary key,
course_name varchar(20) not null unique,
course_period varchar(20) not null,
course_price int not null,
std_id int unique not null,
foreign key (std_id) references students_info(std_id)
);

-- deleting constraint
alter table courses drop constraint course_name;

-- adding contraint
alter table courses add constraint course_name ;

-- describe the table
desc table courses ;

-- deleting column
alter table courses drop column course_price;

create table course_teacher(
teacher_id int primary key,
teacher_name varchar(20) not null,
teacher_course varchar(20) not null unique,
teacher_experience varchar(20),
course_id int not null,
foreign key (course_id) references courses(course_id)
);


INSERT INTO students_info (std_id, std_name, std_mob_no, std_address, course_choosen, amount_paid) VALUES
(1, 'John Doe', '9876543210', 'New York, USA', 'Data Analytics', 1200),
(2, 'Jane Smith', '9876543211', 'Los Angeles, USA', 'Data Science', 1500),
(3, 'Michael Brown', '9876543212', 'Chicago, USA', 'Full Stack Python', 1300),
(4, 'Emily Davis', '9876543213', 'Houston, USA', 'Full Stack Java', 1400),
(5, 'David Wilson', '9876543214', 'Phoenix, USA', 'Digital Marketing', 1000),
(6, 'Emma Johnson', '9876543215', 'Philadelphia, USA', 'Data Analytics', 1200),
(7, 'Liam Miller', '9876543216', 'San Antonio, USA', 'Data Science', 1500),
(8, 'Olivia Martinez', '9876543217', 'San Diego, USA', 'Full Stack Python', 1300),
(9, 'Noah Anderson', '9876543218', 'Dallas, USA', 'Full Stack Java', 1400),
(10, 'Sophia Thomas', '9876543219', 'San Jose, USA', 'Digital Marketing', 1000),
(11, 'James Taylor', '9876543220', 'Austin, USA', 'Data Analytics', 1200),
(12, 'Charlotte White', '9876543221', 'Jacksonville, USA', 'Data Science', 1500),
(13, 'Benjamin Harris', '9876543222', 'Fort Worth, USA', 'Full Stack Python', 1300),
(14, 'Amelia Martin', '9876543223', 'Columbus, USA', 'Full Stack Java', 1400),
(15, 'Ethan Lee', '9876543224', 'San Francisco, USA', 'Digital Marketing', 1000),
(16, 'Mia Walker', '9876543225', 'Indianapolis, USA', 'Data Analytics', 1200),
(17, 'Lucas Hall', '9876543226', 'Charlotte, USA', 'Data Science', 1500),
(18, 'Harper Young', '9876543227', 'Seattle, USA', 'Full Stack Python', 1300),
(19, 'Mason Allen', '9876543228', 'Denver, USA', 'Full Stack Java', 1400),
(20, 'Evelyn King', '9876543229', 'Washington, USA', 'Digital Marketing', 1000),
(21, 'Alexander Scott', '9876543230', 'Boston, USA', 'Data Analytics', 1200),
(22, 'Scarlett Green', '9876543231', 'El Paso, USA', 'Data Science', 1500),
(23, 'Henry Adams', '9876543232', 'Nashville, USA', 'Full Stack Python', 1300),
(24, 'Grace Baker', '9876543233', 'Detroit, USA', 'Full Stack Java', 1400),
(25, 'Daniel Gonzalez', '9876543234', 'Memphis, USA', 'Digital Marketing', 1000),
(26, 'Ava Nelson', '9876543235', 'Louisville, USA', 'Data Analytics', 1200),
(27, 'Sebastian Carter', '9876543236', 'Baltimore, USA', 'Data Science', 1500),
(28, 'Ella Mitchell', '9876543237', 'Milwaukee, USA', 'Full Stack Python', 1300),
(29, 'Jack Perez', '9876543238', 'Albuquerque, USA', 'Full Stack Java', 1400),
(30, 'Lily Roberts', '9876543239', 'Tucson, USA', 'Digital Marketing', 1000),
(31, 'William Collins', '9876543240', 'Fresno, USA', 'Data Analytics', 1200),
(32, 'Chloe Sanchez', '9876543241', 'Sacramento, USA', 'Data Science', 1500),
(33, 'Samuel Rivera', '9876543242', 'Kansas City, USA', 'Full Stack Python', 1300),
(34, 'Zoey Morgan', '9876543243', 'Mesa, USA', 'Full Stack Java', 1400),
(35, 'Logan Bell', '9876543244', 'Atlanta, USA', 'Digital Marketing', 1000),
(36, 'Penelope Murphy', '9876543245', 'Omaha, USA', 'Data Analytics', 1200),
(37, 'Jacob Cooper', '9876543246', 'Colorado Springs, USA', 'Data Science', 1500),
(38, 'Layla Reed', '9876543247', 'Raleigh, USA', 'Full Stack Python', 1300),
(39, 'Oliver Bailey', '9876543248', 'Long Beach, USA', 'Full Stack Java', 1400),
(40, 'Madison Ward', '9876543249', 'Virginia Beach, USA', 'Digital Marketing', 1000),
(41, 'Elijah Cox', '9876543250', 'Miami, USA', 'Data Analytics', 1200),
(42, 'Hannah Diaz', '9876543251', 'Oakland, USA', 'Data Science', 1500),
(43, 'Matthew Russell', '9876543252', 'Minneapolis, USA', 'Full Stack Python', 1300),
(44, 'Stella Torres', '9876543253', 'Tulsa, USA', 'Full Stack Java', 1400),
(45, 'Lucas Evans', '9876543254', 'Arlington, USA', 'Digital Marketing', 1000),
(46, 'Nora Stevens', '9876543255', 'New Orleans, USA', 'Data Analytics', 1200),
(47, 'Dylan Patterson', '9876543256', 'Wichita, USA', 'Data Science', 1500),
(48, 'Victoria Griffin', '9876543257', 'Cleveland, USA', 'Full Stack Python', 1300),
(49, 'Leo Ramirez', '9876543258', 'Bakersfield, USA', 'Full Stack Java', 1400),
(50, 'Aurora Campbell', '9876543259', 'Honolulu, USA', 'Digital Marketing', 1000);


-- INSERT THE DATA
INSERT INTO courses (course_id, course_name, course_period, std_id) VALUES
(101, 'Data Analytics', '6 months', 1),
(102, 'Data Science', '8 months', 2),
(103, 'Full Stack Python', '7 months', 3),
(104, 'Full Stack Java', '7 months', 4),
(105, 'Digital Marketing', '5 months', 5),
(106, 'Data Analytics', '6 months', 6),
(107, 'Data Science', '8 months', 7),
(108, 'Full Stack Python', '7 months', 8),
(109, 'Full Stack Java', '7 months', 9),
(110, 'Digital Marketing', '5 months', 10),
(111, 'Data Analytics', '6 months', 11),
(112, 'Data Science', '8 months', 12),
(113, 'Full Stack Python', '7 months', 13),
(114, 'Full Stack Java', '7 months', 14),
(115, 'Digital Marketing', '5 months', 15),
(116, 'Data Analytics', '6 months', 16),
(117, 'Data Science', '8 months', 17),
(118, 'Full Stack Python', '7 months', 18),
(119, 'Full Stack Java', '7 months', 19),
(120, 'Digital Marketing', '5 months', 20),
(121, 'Data Analytics', '6 months', 21),
(122, 'Data Science', '8 months', 22),
(123, 'Full Stack Python', '7 months', 23),
(124, 'Full Stack Java', '7 months', 24),
(125, 'Digital Marketing', '5 months', 25),
(126, 'Data Analytics', '6 months', 26),
(127, 'Data Science', '8 months', 27),
(128, 'Full Stack Python', '7 months', 28),
(129, 'Full Stack Java', '7 months', 29),
(130, 'Digital Marketing', '5 months', 30),
(131, 'Data Analytics', '6 months', 31),
(132, 'Data Science', '8 months', 32),
(133, 'Full Stack Python', '7 months', 33),
(134, 'Full Stack Java', '7 months', 34),
(135, 'Digital Marketing', '5 months', 35),
(136, 'Data Analytics', '6 months', 36),
(137, 'Data Science', '8 months', 37),
(138, 'Full Stack Python', '7 months', 38),
(139, 'Full Stack Java', '7 months', 39),
(140, 'Digital Marketing', '5 months', 40),
(141, 'Data Analytics', '6 months', 41),
(142, 'Data Science', '8 months', 42),
(143, 'Full Stack Python', '7 months', 43),
(144, 'Full Stack Java', '7 months', 44),
(145, 'Digital Marketing', '5 months', 45),
(146, 'Data Analytics', '6 months', 46),
(147, 'Data Science', '8 months', 47),
(148, 'Full Stack Python', '7 months', 48),
(149, 'Full Stack Java', '7 months', 49),
(150, 'Digital Marketing', '5 months', 50);

alter table course_teacher drop column std_id;

ALTER TABLE course_teacher 
DROP FOREIGN KEY std_id;

INSERT INTO course_teacher(teacher_id, teacher_name, teacher_course, teacher_experience, course_id) VALUES
(1, 'Dr. Robert Smith', 'Data Analytics', '10 years', 101),
(2, 'Dr. Emily Johnson', 'Data Science', '12 years', 102),
(3, 'Mr. Michael Brown', 'Full Stack Python', '8 years', 103),
(4, 'Ms. Sophia Davis', 'Full Stack Java', '9 years', 104),
(5, 'Mr. David Wilson', 'Digital Marketing', '7 years', 105);

/* ----------------------------------------------- QUESTIONS AND ANSWERS ------------------------------------------*/

 -- What is the count of student those have enrolled for the course?
 select count(std_id) from students_info;
 
 -- Highest paid fee for the course ?
 select max(amount_paid) from students_info;
 
 -- category wise courses count
select course_choosen,count(course_choosen) from students_info
group by course_choosen;

-- Top 5 highest paid student 
select * from students_info
order by amount_paid desc 
limit 5;

-- students with name starts with z.
select * 
from students_info
where std_name like "z%";

-- distinct course period 
select distinct course_period from courses;

-- sum of total fee each course has gather
select course_choosen,sum(amount_paid) from students_info
group by course_choosen;

-- Joins on teacher and course with experience

select * from courses;
select teacher_name as tn,course_name as cn,teacher_experience as te
from course_teacher as ct
left join courses as c ON ct.course_id = c.course_id;

-- Join students and course

select * from students_info;
select std_name as 'Student Name',Amount_paid as 'Fees Paid',course_name as 'Course Name',course_period as 'Course Time'
from courses as C
left join students_info as SI ON c.std_id = Si.std_id