WITH Temp as (
	SELECT *
    FROM Employees
    Limit 7
)

Select * from Temp;


WITH avgs as (
	SELECT avg(salary)
    FROM Employees
    WHERE department_id = 60
)

Select * from avgs;

WITH maxe as (
	SELECT max(salary)
    FROM Employees
    WHERE department_id = 20
)

Select * from maxe;

-- at a time declare
WITH avgIT as (
	SELECT avg(salary) as sal1
    FROM Employees
    WHERE department_id = 60
),
maxa as (
	SELECT max(salary) as sal2
    FROM Employees
    WHERE department_id = 20
)

select * 
FROM employees
WHERE salary > (select sal1 from avgIT) AND salary < (select sal2 from maxa);