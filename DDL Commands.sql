create database employee;
use employee;
create table Departments( 
Departments_id int primary key,
Departments_name varchar(100));

create table Location(
Location_id int primary key,
Location varchar(30)
);


create table Employees(
Employees_id int primary key,
Employees_name varchar(50),
Genter enum('M','F'),
Age int,
Hire_date date,
Designation varchar(100),
Departments_id int,
Location_id int,
Salary decimal(10,2),
foreign key(Departments_id)references Departments(Departments_id),
foreign key(Location_id)references Location(Location_id));


alter table Employees add column Email varchar(100);

alter table Employees modify Designation varchar(200);

alter table Employees drop column Age;

alter table Employees rename column Hire_date to date_of_joining;

rename table Departments To Department_Info;

rename table Location  to Locations;

truncate table Employees;

drop table Employees;

drop database employee;


-- Database Recreation --


--  Drop the database if it already exists
DROP DATABASE IF EXISTS employee;


CREATE DATABASE employee;


USE employee;


--  Create  tables
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Locations (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    gender CHAR(1) NOT NULL CHECK (gender IN ('M', 'F')),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    department_id INT,
    location_id INT,

    FOREIGN KEY (department_id)
        REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES Locations(location_id)
);



-- insert values

insert into Departments values(1,'Human Resourses'),(2,'Finance'),(3,'Information Technology');

select * from Departments;


INSERT INTO Locations (location_name)
VALUES
('Kochi'),
('Malappuram'),
('Kozhikode');

INSERT INTO Employees
(employee_id, employee_name, gender, age, hire_date, department_id, location_id)
VALUES
(101, 'Anu', 'F', 25, '2024-01-15', 1, 1),
(102, 'Rahul', 'M', 30, '2023-06-10', 2, 2),
(103, 'Meera', 'F', 28, '2025-03-20', 3, 3);


SELECT * FROM Departments;

SELECT * FROM Locations;

SELECT * FROM Employees;






