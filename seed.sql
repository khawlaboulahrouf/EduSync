INSERT INTO users (firstname, lastname ,email ,pasword ,role_id)
VALUES
('Khaoula' , 'Admin' ,'khawla1@gmail.com' ,'123456' ,1),
('hamza' , 'Prof' ,'hamza2@gmail.com' ,'456789' ,2),
('bilal' , 'student' ,'bilal3@gmail.com' ,'135790' ,3),
('sara' , 'Student' ,'sara1@gmail.com' ,'325498' ,1);


INSERT INTO classes (name , classroom_number)
VALUES 
('Développeur web 2026' , 'a1'),
('Développeur web 2025' , 'b2');

INSERT INTO courses ( title ,description ,total_hours ,user_id)
VALUES
('html & css' , 'introduction au web' , 30 ,2),
('javascript' , 'programmation web' , 40 ,2);


INSERT INTO students(dateOfBirth, student_number , user_id , class_id)
VALUES
('2000-05-10' , 'STU001' , 3 , 1);


INSERT INTO enrollments (enrolled_at , status , student_id , course_id)
VALUES 
('2026-04-01' , 'actif' , 1 , 1),
('2026-04-02' , 'actif' , 1 , 2);