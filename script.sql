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

CREATE TABLE classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR (100) NOT NULL,
    classroom_number VARCHAR(20)
);


CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR (100) not null,
    description TEXT,
    total_hours INT,
     user_id INT,
     FOREIGN KEY (user_id) REFERENCES users(id)
);



CREATE table students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dateOfBirth DATE,
    student_number VARCHAR(50) UNIQUE,
    user_id INT UNIQUE,
    class_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (class_id) REFERENCES classes(id)
);


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


