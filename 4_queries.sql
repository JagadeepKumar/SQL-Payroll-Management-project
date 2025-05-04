-- 4. Sample Queries

-- View all payroll data
SELECT * FROM EMP_PAYROLL_VIEW;

-- Department-wise payroll summary
SELECT d.department_name, COUNT(e.emp_id) AS total_employees, SUM(v.net_salary) AS total_payroll
FROM EMP_PAYROLL_VIEW v
JOIN EMPLOYEE e ON v.emp_id = e.emp_id
JOIN DEPARTMENT d ON e.department_id = d.department_id
GROUP BY d.department_name;

-- Employees with net salary > ₹50,000
SELECT emp_name, net_salary 
FROM EMP_PAYROLL_VIEW 
WHERE net_salary > 50000;
