CREATE DATABASE EduSync;

use EduSync;

CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    label VARCHAR (50) NOT NULL
);

INSERT INTO roles (label)
VALUES('Admin'),('Prof'),('Student');

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    email VARCHAR (100) NOT NULL UNIQUE,
    pasword VARCHAR(255) NOT NULL,
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES roles(id)
);

INSERT INTO users (firstname, lastname ,email ,pasword ,role_id)
VALUES
('Khaoula' , 'Admin' ,'khawla1@gmail.com' ,'123456' ,1),
('hamza' , 'Prof' ,'hamza2@gmail.com' ,'456789' ,2),
('bilal' , 'student' ,'bilal3@gmail.com' ,'135790' ,3),
('sara' , 'Student' ,'sara1@gmail.com' ,'325498' ,1);


CREATE TABLE classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR (100) NOT NULL,
    classroom_number VARCHAR(20)
);


INSERT INTO classes (name , classroom_number)
VALUES 
('Développeur web 2026' , 'a1'),
('Développeur web 2025' , 'b2');

CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR (100) not null,
    description TEXT,
    total_hours INT,
     user_id INT,
     FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO courses ( title ,description ,total_hours ,user_id)
VALUES
('html & css' , 'introduction au web' , 30 ,2),
('javascript' , 'programmation web' , 40 ,2);

CREATE table students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dateOfBirth DATE,
    student_number VARCHAR(50) UNIQUE,
    user_id INT UNIQUE,
    class_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (class_id) REFERENCES classes(id)
);

INSERT INTO students(dateOfBirth, student_number , user_id , class_id)
VALUES
('2000-05-10' , 'STU001' , 3 , 1);

CREATE TABLE enrollments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    enrolled_at DATE,
    status VARCHAR(20),
    student_id INT,
    course_id INT,

    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id),

    UNIQUE (student_id, course_id)
);

INSERT INTO enrollments (enrolled_at , status , student_id , course_id)
VALUES 
('2026-04-01' , 'actif' , 1 , 1),
('2026-04-02' , 'actif' , 1 , 2);
