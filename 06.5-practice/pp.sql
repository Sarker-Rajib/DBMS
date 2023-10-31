use dummydb;

SELECT *
FROM DEPARTMENTS;

SELECT *
FROM EMPLOYEES
WHERE hire_date > ( SELECT hire_date
					FROM EMPLOYEES
                    WHERE employee_id = 166
                    );
                    