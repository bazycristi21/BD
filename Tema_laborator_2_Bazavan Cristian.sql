
-- lab2. 4

SELECT last_name as "NUME", employee_id as "CODE", length(last_name) as "LENGTH", INSTR(lower(last_name),'a') as "POSITION"
FROM employees
WHERE last_name LIKE '%e';

-- lab2. 7

SELECT last_name as "Nume angajat", hire_date as "Data angajarii"
FROM employees
WHERE commission_pct is not NULL;

-- lab2. 9
SELECT TO_DATE('2021-01-01','YYYY-MM-DD')  - SYSDATE 
FROM dual;

-- lab2. 13
SELECT last_name, hire_date, TO_CHAR(hire_date, 'D') as "Zi"
FROM employees;
ORDER BY CASE 
    WHEN UPPER(TO_CHAR(hire_date, 'DAY')) = 'MONDAY' THEN 1
    WHEN UPPER(TO_CHAR(hire_date, 'DAY')) = 'TUESDAY' THEN 2
    WHEN UPPER(TO_CHAR(hire_date, 'DAY')) = 'WEDNESDAY' THEN 3
    WHEN UPPER(TO_CHAR(hire_date, 'DAY')) = 'THURSDAY' THEN 4
    WHEN UPPER(TO_CHAR(hire_date, 'DAY')) = 'FRIDAY' THEN 5
    WHEN UPPER(TO_CHAR(hire_date, 'DAY')) = 'SATURDAY' THEN 6
    WHEN UPPER(TO_CHAR(hire_date, 'DAY')) = 'SUNDAY' THEN 7
    ELSE 8;


-- lab2. 14

SELECT last_name, DECODE(commission_pct,null,'Fara comision',commission_pct) as "Comision"
FROM employees;
    
    
-- lab2. 15
SELECT last_name, salary, commission_pct
FROM employees
WHERE salary > 10000;
