use dummydb;

select distinct salary 
from employees
order by salary desc
limit 1,1;

SELECT * 
FROM EMPLOYEES
WHERE Salary = (select distinct salary 
				from employees
				order by salary desc
				limit 1,1);

SELECT * 
FROM EMPLOYEES 
WHERE SALARY = (
				SELECT MAX(salary)
				FROM EMPLOYEES
				WHERE salary < (SELECT MAX(salary)
								FROM EMPLOYEES
								WHERE salary));
                                
SELECT *
From Employees as Emp
Where Salary > (SELECT SALARY
				From Employees as MGR
                where emp.manager_id = mgr.employee_id
                );