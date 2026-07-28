-- Q1. Show all employees.
select * from emp;
-- Q2. Show only name and salary.
select name, salary from emp;
-- Q3. Show all employees from Delhi.
select * from emp where city='Delhi';
-- Q4. Show employees whose salary is greater than 60000.
select * from emp where salary>60000;
-- Q5. Show employees ordered by salary highest first.
select * from emp order by salary desc;
-- Q6. Show top 3 highest-paid employees.
	SELECT * FROM EMP 
	ORDER BY SALARY DESC
	LIMIT 3;
-- L2```````````````````````````````````````````````````````````
-- Q7. How many employees are there?
SELECT COUNT(*) AS TOTALEMPLOYEE FROM EMP;
-- Q8. Average salary of all employees.
SELECT AVG(SALARY) AS AVERAGE_SALARY FROM EMP;
-- Q9. Highest salary
SELECT MAX(SALARY) FROM EMP;
	
SELECT SALARY FROM EMP 
ORDER BY SALARY DESC
LIMIT 1;
-- 10. Lowest salary.
SELECT MIN(SALARY) FROM EMP;
SELECT SALARY FROM EMP
ORDER BY SALARY ASC
LIMIT 1;
-- 11. Total salary expense.
SELECT SUM(SALARY) FROM EMP;
-- L3`````````````````````````````````````````````````````````````
-- Q12. Count employees in each department.
SELECT DEPARTMENT, COUNT(*) AS TOATAL_EMPLOYEES
FROM EMP
GROUP BY DEPARTMENT;
-- Q13. Average salary by department.
SELECT DEPARTMENT, AVG(SALARY) AS AVERAGE_SALARY
FROM EMP
GROUP BY DEPARTMENT;
-- Q14. Highest salary in each department.
SELECT DEPARTMENT, MAX(SALARY) AS HIGHEST_SALARY
FROM EMP
GROUP BY DEPARTMENT;
-- Q15. Cities and employee counts.
SELECT COUNT(DISTINCT CITY) AS total_unique_CITIES, COUNT(ID) AS TOTAL_EMPLOYEES
FROM EMP;
SELECT city, COUNT(*) AS total_employees
FROM emp
GROUP BY city;
-- L4```WHERE + GROUP BY`````````````````````````````````````````````````````````
-- Q16. Average salary of employees from Delhi.
SELECT AVG(salary) AS AVERAGE_SALARY 
FROM EMP
WHERE city='Delhi';
-- Q17. Departments having more than 2 employees
SELECT department, COUNT(*) AS total_employees
FROM emp
GROUP BY department
HAVING COUNT(*) > 2;
-- Q18. Cities where average salary exceeds 55000.
SELECT city, AVG(salary) AS average_salary
FROM emp
GROUP BY city
HAVING AVG(salary) > 55000;
CREATE TABLE emp (
    id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    age INT,
    salary INT,
    city VARCHAR(50),
    joining_date DATE
);
INSERT INTO emp VALUES
(1,'Alice','IT',25,50000,'Delhi','2022-01-15'),
(2,'Bob','HR',30,45000,'Mumbai','2021-03-20'),
(3,'Charlie','IT',28,60000,'Delhi','2020-07-10'),
(4,'David','Finance',35,70000,'Kolkata','2019-11-05'),
(5,'Eva','HR',26,48000,'Mumbai','2023-02-18'),
(6,'Frank','IT',32,75000,'Bangalore','2018-08-22'),
(7,'Grace','Finance',29,65000,'Delhi','2021-12-01'),
(8,'Henry','IT',27,55000,'Mumbai','2022-06-14'),
(9,'Ivy','HR',31,52000,'Kolkata','2020-09-09'),
(10,'Jack','Finance',40,90000,'Bangalore','2017-04-25');
-- ``````````````````````````````````````````````````````````
-- Create department table
CREATE TABLE dept (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50),
    manager_id INT
);
-- Sample data for dept
INSERT INTO dept VALUES
(1, 'Sales', 'Mumbai', 101),
(2, 'IT', 'Bangalore', 102),
(3, 'HR', 'Delhi', 103),
(4, 'Finance', 'Chennai', 104);
-- Add dept_id column to emp table (foreign key)
ALTER TABLE emp ADD COLUMN dept_id INT;
-- Update emp table with dept_id values
UPDATE emp SET dept_id = 1 WHERE department = 'Sales';
UPDATE emp SET dept_id = 2 WHERE department = 'IT';
UPDATE emp SET dept_id = 3 WHERE department = 'HR';
UPDATE emp SET dept_id = 4 WHERE department = 'Finance';
ALTER TABLE dept 
RENAME COLUMN location TO city;
