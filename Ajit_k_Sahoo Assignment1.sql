#Creating Database 
CREATE DATABASE avd;

#Selecting Database
USE avd;

#Creating Table
CREATE TABLE employee(
	employee_id int,
    first_name varchar(10),
    last_name varchar(10),
    mobile_number int,
    email varchar(30),
    hire_date date,
    designation varchar(20),
    salary int,
    birth_date date
);

#Describing table
DESC employee;

ALTER TABLE employee MODIFY mobile_number BIGINT;

#Inserting data into the table
INSERT INTO employee values 
(1, 'Ajit', 'Sahoo', 1234567890, 'ajit.k@gamil.com', '2024-02-23', 'US Recruiter', 40000, '1998-01-01'),
(2, 'Suman', 'Sharma', 9936578967, 'suman@gmail.com', '2024-01-23', 'Account Mnager', 80000, '1989-01-01'),
(3, 'Hari', 'Nath', 9936578967, 'harinath@gamil.com', '2015-01-22', 'Reporting Manager', 50000, '1992-01-01'),
(4, 'Beda', 'Bhusan', 9936478967, 'bhusan@gamil.com', '2014-02-23', 'Manager', 50000, '1990-01-01');

# To show all data present inside the table,
SELECT * FROM employee;

#To change mobile_number into monile_no
ALTER TABLE employee CHANGE COLUMN mobile_number mobile_no bigint;
SELECT * FROM employee;

#To add new column
ALTER TABLE employee ADD COLUMN office_location varchar(20);
SELECT * FROM employee;

#Drop a column
ALTER TABLE employee DROP COLUMN  office_location;

SET SQL_SAFE_UPDATES = 0;

UPDATE employee
SET OFFICE_LOCATION = CASE employee_id
	WHEN 1 THEN 'Ahmedabad'
    WHEN 2 THEN 'Anand'
    WHEN 3 THEN 'Noida'
    WHEN 4 THEN 'Bhubaneswar'
END
WHERE employee_id IN (1, 2, 3, 4);
SELECT * FROM employee;

UPDATE employee SET salary = 55000 WHERE employee_id = 1;


# To remove an employee from the table
DELETE FROM employee WHERE employee_id = 4;

#Truncate the whole table
TRUNCATE TABLE employee;

SELECT * FROM employee;


#Dropping the table
DROP TABLE employee;