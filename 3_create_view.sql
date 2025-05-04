-- 3. Create View

CREATE OR REPLACE VIEW EMP_PAYROLL_VIEW AS
SELECT 
    e.emp_id,
    e.emp_name,
    e.basic_salary,
    a.hra, a.da, a.bonus,
    d.tax, d.pf, d.loan,
    (e.basic_salary + a.hra + a.da + a.bonus - d.tax - d.pf - d.loan) AS net_salary
FROM EMPLOYEE e
JOIN ALLOWANCE a ON e.emp_id = a.emp_id
JOIN DEDUCTION d ON e.emp_id = d.emp_id;
