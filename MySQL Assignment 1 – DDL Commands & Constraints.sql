# CREATING DATABASE
CREATE DATABASE employee;
USE employee;

#CREATING TABLES
CREATE TABLE departments(department_id INT PRIMARY KEY,department_name VARCHAR(100) UNIQUE NOT NULL);
CREATE TABLE location(location_id INT PRIMARY KEY auto_increment,location VARCHAR(100) UNIQUE NOT NULL);
CREATE TABLE employees(employee_id INT PRIMARY KEY,employee_name VARCHAR(50) NOT NULL,gender ENUM('M','F'),age INT CHECK(age>=18) ,hire_date DATE DEFAULT(current_date()),designation VARCHAR(100),salary DECIMAL(10,2),FOREIGN KEY (department_id)REFERENCES Departments(department_id),FOREIGN KEY (location_id)REFERENCES Location(location_id)
);

#TABLE ALTERATION
ALTER TABLE employees ADD COLUMN email VARCHAR(50);
ALTER TABLE employees MODIFY COLUMN designation VARCHAR(300);
ALTER TABLE employees DROP COLUMN age;
ALTER TABLE employees RENAME COLUMN hire_date TO date_of_joining;

#TABLE RENAMING
RENAME TABLE departments TO Departments_Info;
RENAME TABLE location TO Locations;
DESC employees;
