SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;

--Retrieve employees whose address is in Elgin,IL
SELECT F_NAME, L_NAME FROM EMPLOYEES WHERE ADDRESS LIKE '%Elgin,IL%';

--Retrieve all employees who were born during the 1970s
SELECT F_NAME, L_NAME, B_DATE FROM EMPLOYEES 
SELECT DEPWHERE B_DATE LIKE '197%';

--Retrieve all employees in department 5 whose salary is between 60k and 70k
SELECT * FROM EMPLOYEES WHERE DEP_ID = 5 AND (SALARY BETWEEN 60000 AND 70000);

-- Retrieve a list of employees ordered by department ID.
SELECT * FROM EMPLOYEES ORDER BY DEP_ID;

--Retrieve a list of employees ordered in descending order by department ID and within each department ordered 
-- alphabetically in descending order by last name.

select f_name, l_name, dep_id from employees order by dep_id desc, l_name desc;

-- from past exercise use dep name instead of department id.
SELECT D.DEP_NAME, E.F_NAME, E.L_NAME FROM EMPLOYEES AS E, DEPARTMENTS AS D
WHERE E.DEP_ID = D.DEPT_ID_DEP
ORDER BY D.DEP_NAME, E.L_NAME DESC;

-- FOR EACH DEPARTMENT ID RETRIEVE THE NUMBER OF EMPLOYEES IN THE DEPARTMENT
select count(dep_id), dep_id from employees group by dep_id;

-- for each department retrieve the number of employees in the department, and the average employee salary in the dpt
--#limits to dep with less than 4 employees
select dep_id, count(*) as "num_employees", avg(salary) as "avg_salary" 
from employees 
group by dep_id 
having count(*) < 4
order by avg(salary);


