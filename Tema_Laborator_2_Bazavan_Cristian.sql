-- lab 2 ex 19
SELECT  e.last_name ,
        d.department_name ,
        d.location_id , 
        e.commission_pct
FROM employees e, departments d
WHERE e.department_id = d.department_id
AND commission_pct is not null;

-- lab 2 ex 20
SELECT e.first_name || ' ' || e.last_name "Nume Anjagat",
    d.department_name "Nume Departament"
FROM employees e, departments d
WHERE e.department_id = d.department_id
AND LOWER(e.last_name) LIKE ('%a');



-- lab 2 ex 21

SELECT employees.last_name as "nume", employees.job_id as "job_id", employees.department_id, departments.department_name, locations.city
FROM  employees,departments, locations
WHERE city LIKE 'Oxford';

-- lab 2 ex 22
SELECT e.last_name as "Angajat", e.hire_date as "Data_ang", m1.last_name as "Manager", m1.employee_id as "Data_mgr"
FROM employees e
LEFT JOIN employees m1 ON e.manager_id = m1.employee_id
WHERE e.manager_id IS NOT NULL;


-- lab 2 ex 23
SELECT e.last_name as "Angajat", e.hire_date as "Data_ang", m1.last_name as "Manager", m1.employee_id as "Data_mgr"
FROM employees e
LEFT JOIN employees m1 ON e.manager_id = m1.employee_id;


--lab 2 ex 27
SELECT e.last_name as "Angajat", e.hire_date as "Data_ang", m.last_name as "Manager", m.hire_date as "Data_mgr"
FROM employees e, employees m
WHERE e.hire_date < m.hire_date and e.manager_id = m.employee_id;



