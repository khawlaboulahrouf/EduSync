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
('Khaoula' , 'Admin' ,'khawla@gmail' ,'123456' ,1),
('hamza' , 'Admin' ,'hamza@gmail' ,'456789' ,2),
('bilal' , 'Admin' ,'bilal@gmail' ,'135790' ,3),
('sara' , 'Admin' ,'sara@gmail' ,'325498' ,1);