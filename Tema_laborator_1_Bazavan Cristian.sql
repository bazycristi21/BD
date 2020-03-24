-- LABORATOR 1 BAZAVAN CRISTIAN

-- lab 1. ex 14

SELECT last_name, salary
FROM employees
WHERE salary > 3500 and (department_id = 10 or department_id = 30);

-- lab 1. ex 18

SELECT last_name, salary, commission_pct
FROM employees
ORDER BY salary DESC;

-- lab1. ex 20

SELECT last_name
FROM employees
WHERE last_name LIKE '__a%';

-- lab1. ex 22

SELECT last_name, job_id, salary
FROM employees
WHERE (job_id LIKE '%CLERK%' or job_id LIKE '%REP%') and salary NOT IN (1000,2000,3000);
