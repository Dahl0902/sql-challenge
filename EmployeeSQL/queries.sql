-- 1
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary, s.emp_no
FROM "Salaries" s
JOIN "Employees" e
ON (s.emp_no = e.emp_no);

-- 2
SELECT e.first_name, e.last_name, e.hire_date
FROM "Employees" e
WHERE e.hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3
SELECT d.dept_name, dm.dept_no, dm.emp_no, e.last_name, e.first_name
FROM "Dept_manager" dm
	INNER JOIN "Departments" d
		ON (dm.dept_no = d.dept_no)
	INNER JOIN "Employees" e
		ON (dm.emp_no = e.emp_no);

-- 4
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM "Departments" d
	INNER JOIN "Dept_emp" de
		ON (de.dept_no = d.dept_no)
	INNER JOIN "Employees" e
		ON (e.emp_no = de.emp_no);
		
-- 5
SELECT first_name, last_name, birth_date, sex
FROM "Employees"
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- 6
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" e
	INNER JOIN "Dept_emp" de
		ON (de.emp_no = e.emp_no)
	INNER JOIN "Departments" d
		ON (d.dept_no = de.dept_no)
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no;

-- 7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" e
	INNER JOIN "Dept_emp" de
		ON (de.emp_no = e.emp_no)
	INNER JOIN "Departments" d
		ON (d.dept_no = de.dept_no)
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY e.emp_no;

-- 8
SELECT last_name, COUNT(last_name)
FROM "Employees"
GROUP BY last_name
ORDER BY COUNT (last_name) DESC;

