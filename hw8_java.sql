CREATE DATABASE hw8_java;

USE hw8_java;

CREATE TABLE employee
(
	Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(20),
    LastName VARCHAR(20),
    Department VARCHAR(20),
    Salary INT
);

INSERT INTO employee(FirstName, LastName, Department, Salary)
VALUES
('Иван', 'Иванов', 'IT', 1000),
('Петр', 'Петров', 'Sales', 400),
('Евгеньева', 'Евгения', 'HR', 600),
('Николаев', 'Николай', 'Management', 2000);