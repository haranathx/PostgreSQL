-- WHERE + GROUP BY (Deep seek)

-- 1. Count employees in each department, but only include 
-- departments with employees above 25 years old.

SELECT department, COUNT(*) as employee_count
FROM emp
where age >25
group by department;  


-- 2. Find average salary by city for employees who 
-- joined after 2020

SELECT city, AVG(salary) as average_salary
from emp
WHERE EXTRACT(YEAR FROM joining_date) > 2020
group by city;


-- 3. Count employees by department where salary is greater 
-- than 50,000

SELECT department, COUNT(*) AS HIGH_EARNERS
FROM EMP
WHERE salary > 50000
GROUP BY department;


-- 4. Find cities with average employee age > 30, but only 
-- for departments with "Sales" in the name

SELECT city, AVG(age) as avg_age
FROM emp
WHERE department LIKE '%Sales%'
GROUP BY city
HAVING AVG(age) > 30;


-- 5. Calculate total salary paid per department for employees 
-- hired between 2019 and 2022

SELECT department, sum(salary) as Total_salary
from emp 
where joining_date BETWEEN '2019-01-01' AND '2022-12-31'
GROUP BY department;

-- 6. Find departments where maximum salary > 100,000, but only
-- for employees in 'Mumbai' or 'Delhi'

SELECT department, MAX(salary) as max_salary
FROM emp
WHERE city IN ('Mumbai', 'Delhi')
GROUP BY department
HAVING MAX(salary) > 100000;

-- WHERE + GROUP BY (Chat GPT)

-- Q1 Find the number of employees in each department.
SELECT department, count(*) as employees_count
from emp
group by department;

-- Q2. Find the average salary of employees in each department.
SELECT department, AVG(salary) as average_salary
from emp
group by department;

-- Q3. Find the maximum salary in each department.
SELECT department, MAX(salary) as Maximum_Salary
FROM emp
GROUP BY department;

-- Q4. Find the minimum salary in each city.
SELECT city, MIN(salary) as Minimum_Salary
FROM emp
GROUP BY city;

-- Q5. Find the total salary paid in each department.
SELECT department, SUM(salary) as Total_Salary
FROM emp
GROUP BY department;

-- Q6. Find the average salary of employees whose salary is 
-- greater than 50000, grouped by department.
SELECT department, AVG(salary) as Average_Salary
FROM emp
WHERE salary>50000
GROUP BY department;

-- Q7. Find the number of employees older than 30, 
-- grouped by city.
SELECT city, COUNT(*) as No_of_emp
FROM emp
WHERE age>30
GROUP BY city;

-- Q8. Find the highest salary in each department 
-- where employees are younger than 35.

SELECT department, MAX(salary) as Highest_Salary
FROM emp
WHERE age<35
GROUP BY department;

-- Q9. Find the total salary of employees from Kolkata, 
-- grouped by department.
SELECT department, SUM(salary) as Total_Salary
FROM emp 
WHERE LOWER(city)='kolkata'
GROUP BY department;

-- Q10. Find the average age of employees earning more than 
-- 60000, grouped by city.
SELECT city, AVG(age) as average_age
from emp
where salary>60000
GROUP BY city;

-- Q11. Find the number of employees who joined after 
-- 2022-01-01, grouped by department.
SELECT department, COUNT(*) AS total_employees
FROM emp
WHERE joining_date>'2022-01-01'
GROUP BY department;

-- Q12. Find the total salary of employees aged between 25 and
-- 35, grouped by city.

SELECT city, SUM(salary) AS total_salary
FROM EMP
WHERE age BETWEEN 25 AND 35
GROUP BY city;

-- Q13. Find the average salary of employees from Delhi or 
-- Mumbai, grouped by department.

SELECT department, AVG(salary) as average_salary
from emp
WHERE city IN('Delhi', 'Mumbai')
GROUP BY department;

-- Q14. Find the maximum salary of employees whose salary 
-- is less than 70000, grouped by city.

SELECT city, MAX(salary) AS Maximum_salary
FROM emp
WHERE salary<70000
GROUP BY city;

-- Q15. Find the minimum age of employees earning more 
-- than 40000, grouped by department.

SELECT department, MIN(age) AS minimum_age
FROM emp
WHERE salary>40000
GROUP BY department;

-- Q16. Count the number of employees for every department 
-- and city.

SELECT department, city, COUNT(*) AS Total_Employees
FROM emp
GROUP BY department, city;

-- Q17. Find the average salary for every department and city.

SELECT department, city, AVG(salary) as average_salary
from emp
GROUP BY department,city;

-- Q18. Find the maximum salary for every department and city 
-- where employees are older than 28.

SELECT department, city, MAX(salary) AS Maximum_Salary
FROM emp
WHERE age>28
GROUP BY department, city;

-- Q19. Find the total salary for every department and city
-- where salary is above 50000.

SELECT department,city,SUM(salary) AS total_salary
FROM emp
WHERE salary>50000
GROUP BY department,city;

-- Q20. Find the average age for every department and 
-- city where employees joined after 2021-01-01.

SELECT department,city,AVG(age) AS average_age
FROM emp
WHERE joining_date > '2021-01-01'
GROUP BY department,city;

-- Level 5 (Challenge)
-- Q21. Find departments where employees earn more than 50000, and show:
-- Department,Number of employees,Average salary

SELECT department, COUNT(id) AS number_of_emp, AVG(salary) AS Average_salary 
from emp
where salary>50000
GROUP BY department;


-- Q22. Find cities where employees are older than 30, and show:
-- City,Highest salary,Lowest salary,Average salary

SELECT 
	city, 
	MAX(salary) AS Highest_salary,
	MIN(salary) AS lowest_salary,
	AVG(salary) AS average_salary

FROM emp
WHERE age>30
GROUP BY city;


-- Q23. For employees younger than 40, find the total 
-- salary in every department.

SELECT department, SUM(salary) AS total_salary
FROM emp
WHERE age < 40
GROUP BY department;

-- Q24. Find the number of employees earning between 
-- 40000 and 80000, grouped by city.

SELECT city, COUNT(*) AS number_of_emp
FROM emp
WHERE salary BETWEEN 40000 AND 80000
GROUP BY city;

-- Q25. Find the average salary of employees who 
-- joined before 2023-01-01, grouped by department.

SELECT department, ROUND(AVG(salary),2) AS average_salary
FROM emp
WHERE joining_date < '2023-01-01'
GROUP BY department;

-- Bonus (Mix Everything)

-- Q26. Find the total salary of employees from IT 
-- department grouped by city.

SELECT city, SUM(salary) AS total_salary
FROM emp
WHERE department = 'IT'
GROUP BY city;

-- Q27. Find the average age of employees whose salary 
-- is greater than 70000, grouped by department.

SELECT department, ROUND(AVG(age),1) AS average_age
FROM emp
WHERE salary>70000
GROUP BY department;

-- Q28. Find the highest salary in each city for 
-- employees who joined after 2020-01-01.

SELECT city, ROUND(MAX(salary),2) AS highest_salary
FROM emp
WHERE joining_date>'2020-01-01'
GROUP BY city;

-- Q29. Find the count of employees from HR department 
-- whose age is less than 35, grouped by city.

SELECT city, COUNT(*) AS total_emp
FROM emp
WHERE department = 'HR' AND age<35
GROUP BY city;

-- Q30. Find the average salary of employees aged 
-- between 25 and 40, grouped by department and city.

SELECT 
	department, 
	city, 
	ROUND(AVG(salary), 2) AS average_salary
FROM emp
WHERE age BETWEEN 25 AND 40
GROUP BY department, city;
