# SQL-Payroll-Management-project

# Oracle SQL 

# Payroll Management System (Oracle SQL Project)

This is an  Payroll Management System project** built using Oracle SQL. 


Project Structure

1. create_tables.sql.
2. insert_data.sql.
3. create_view.sql.
4. queries.sql.

Database Tables

1. `DEPARTMENT`
Stores department details.

2. `EMPLOYEE`
Stores employee personal and job information.

3. `ALLOWANCE`
Stores HRA, DA, and bonus amounts for each employee.

4. `DEDUCTION`
Stores tax, PF, and loan deductions for each employee.

5. `PAYROLL`
Stores payroll records with calculated net salary and pay date.


View: `EMP_PAYROLL_VIEW`

Combines data from EMPLOYEE, ALLOWANCE, and DEDUCTION to calculate:
```
Net Salary = Basic + HRA + DA + Bonus - (Tax + PF + Loan)
```


📌 Note

This project does **not** use any stored procedures, functions, or triggers—only pure SQL (DDL, DML, Views, and Queries).


