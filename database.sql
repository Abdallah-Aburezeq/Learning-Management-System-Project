# Note: The "if exists" which only works with MySQL 3.22 or later
drop database if exists userdb;
create database userdb;
use userdb;

CREATE TABLE users (
  user_id int(9) NOT NULL,
  user_name varchar(50) NOT NULL,
  password varchar(32) NOT NULL,
  PRIMARY KEY (user_name),
  KEY password (password),
  KEY user_id (user_id)
);

CREATE TABLE students (
  user_id int(9) NOT NULL,
  surname varchar(50),
  firstname varchar(50),
  PRIMARY KEY (user_id)
);

CREATE TABLE professors (
  user_id int(9) NOT NULL,
  surname varchar(50),
  firstname varchar(50),
  PRIMARY KEY (user_id)
);


CREATE TABLE classes (
  class_id int(5) NOT NULL,
  class_name varchar(50) NOT NULL,
  course_id varchar(8) NOT NULL,
  class_professor varchar(50) NOT NULL,
  PRIMARY KEY (class_id),
  KEY var (class_name)
);

create table C20409 (
  user_id int(9) NOT NULL,
  instructor_id int(9) NOT NULL,
  assignment varchar(50) NOT NULL,
  grade float(5),
  PRIMARY KEY (user_id)
);


create table C21088 (
  user_id int(9) NOT NULL,
  instructor_id int(9) NOT NULL,
  assignment varchar(50) NOT NULL,
  grade float(5),
  PRIMARY KEY (user_id)
);


create table C21820 (
  user_id int(9) NOT NULL,
  instructor_id int(9) NOT NULL,
  assignment varchar(50) NOT NULL,
  grade float(5),
  PRIMARY KEY (user_id)
);


create table C23921 (
  user_id int(9) NOT NULL,
  instructor_id int(9) NOT NULL,
  assignment varchar(50) NOT NULL,
  grade float(5),
  PRIMARY KEY (user_id)
);


create table C23921 (
  user_id int(9) NOT NULL,
  instructor_id int(9) NOT NULL,
  assignment varchar(50) NOT NULL,
  grade float(5),
  PRIMARY KEY (user_id)
);


create table C23924 (
  user_id int(9) NOT NULL,
  instructor_id int(9) NOT NULL,
  assignment varchar(50) NOT NULL,
  grade float(5),
  PRIMARY KEY (user_id)
);


create table C24015 (
  user_id int(9) NOT NULL,
  instructor_id int(9) NOT NULL,
  assignment varchar(50) NOT NULL,
  grade float(5),
  PRIMARY KEY (user_id)
);

INSERT INTO students VALUES (9001230123,'Boudreaux','Ryan');

INSERT INTO professors VALUES (6001230123,'Chang','Yuchou');

INSERT INTO classes VALUES (20409,"English", "ENG2301", "Chang");
INSERT INTO classes VALUES (23924,'Software Engineering','CS3420','Chang');
INSERT INTO classes VALUES (24015, "Philosophy", "Phil1301", "Chang");
INSERT INTO classes VALUES (21820, "Operating Systems", "CS4315", "Chang");
INSERT INTO classes VALUES (23920, "Internet of Things", "CS4390", "Chang");
INSERT INTO classes VALUES (23921, "Programming Language Concepts", "CS4303", "Chang");
INSERT INTO classes VALUES (21088, "Senior Seminar", "CS4380", "Chang");

INSERT INTO users SET user_id='900252117', user_name='boudreauxr2', password='8b6be699378084b989ced735204449a5';
