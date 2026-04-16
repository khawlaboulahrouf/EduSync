CREATE DATABASE EduSync;

use EduSync;

CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    label VARCHAR (50) NOT NULL
);

INSERT INTO roles (label)
VALUES('Admin'),('Prof'),('Student');