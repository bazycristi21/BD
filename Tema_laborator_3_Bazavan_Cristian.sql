--lab 3 ex 4
SELECT e.department_id, d.department_name,
    e.last_name, e.job_id,'$'|| e.salary || '.00'
FROM employees e, departments d
WHERE e.department_id = d.department_id and 
    LOWER(e.last_name) LIKE '%ti%'
ORDER BY d.department_name, e.last_name;

--lab 3 ex 5
SELECT e.last_name, e.department_id, d.department_name, l.city, e.job_id
FROM employees e, departments d, locations l
WHERE e.department_id = d.department_id AND
    l.city = 'Oxford';
    
--lab 3 ex 8
SELECT d.department_name, e.last_name
FROM departments d
LEFT OUTER JOIN employees e ON e.department_id = d.department_id; 