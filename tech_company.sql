
DROP DATABASE tech_company;
CREATE DATABASE tech_company;
SHOW DATABASES;
USE tech_company;

CREATE TABLE departments ( 
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    department_email VARCHAR(150)
);

SHOW TABLES;
DESCRIBE departments;
SHOW CREATE TABLE departments;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    employee_email VARCHAR(150),
    job_title VARCHAR(100),
    salary DECIMAL(10,2),
    joining_date DATE,
    department_id INT,

    FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

INSERT INTO departments
    (department_id, department_name, department_email)
VALUES
    (101, 'Development', 'development@techcompany.com'),
    (102, 'Testing', 'testing@techcompany.com'),
    (103, 'Production', 'production@techcompany.com'),
    (104, 'DevOps', 'devops@techcompany.com');
    
    INSERT INTO employees
    (employee_id, employee_name, employee_email,
     job_title, salary, joining_date, department_id)
VALUES
    (1, 'Ravi Kumar', 'ravi@techcompany.com',
     'Software Developer', 45000.00, '2026-01-10', 101),

    (2, 'Priya Sharma', 'priya@techcompany.com',
     'Software Developer', 50000.00, '2026-02-15', 101),

    (3, 'Arun Kumar', 'arun@techcompany.com',
     'Test Engineer', 40000.00, '2026-03-01', 102),

    (4, 'Sneha Reddy', 'sneha@techcompany.com',
     'QA Engineer', 42000.00, '2026-03-10', 102),

    (5, 'Kiran Raju', 'kiran@techcompany.com',
     'Production Engineer', 48000.00, '2026-04-05', 103),

    (6, 'Manoj Kumar', 'manoj@techcompany.com',
     'System Administrator', 52000.00, '2026-04-15', 103),

    (7, 'Sai Krishna', 'sai@techcompany.com',
     'DevOps Engineer', 60000.00, '2026-05-01', 104),

    (8, 'Pavan Kumar', 'pavan@techcompany.com',
     'Cloud Engineer', 65000.00, '2026-05-10', 104);
    
    SELECT * FROM departments;
    
    SELECT * FROM employees;
    
    SELECT
    e.employee_id,
    e.employee_name,
    e.employee_email,
    e.job_title,
    e.salary,
    d.department_name,
    d.department_email
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id;

SELECT
    d.department_name,
    COUNT(e.employee_id) AS total_employees
FROM departments d
LEFT JOIN employees e
    ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;


SELECT employee_name, job_title, salary
FROM employees
WHERE salary < 50000
ORDER BY salary DESC;
     







