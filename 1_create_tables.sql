-- 1. Create Tables

CREATE TABLE DEPARTMENT (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(100) UNIQUE NOT NULL
);

CREATE TABLE EMPLOYEE (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(100) NOT NULL,
    department_id NUMBER,
    job_title VARCHAR2(50),
    date_of_joining DATE,
    basic_salary NUMBER(10, 2) CHECK (basic_salary > 0),
    FOREIGN KEY (department_id) REFERENCES DEPARTMENT(department_id)
);

CREATE TABLE ALLOWANCE (
    emp_id NUMBER REFERENCES EMPLOYEE(emp_id),
    hra NUMBER(10, 2) DEFAULT 0 CHECK (hra >= 0),
    da NUMBER(10, 2) DEFAULT 0 CHECK (da >= 0),
    bonus NUMBER(10, 2) DEFAULT 0 CHECK (bonus >= 0),
    PRIMARY KEY (emp_id)
);

CREATE TABLE DEDUCTION (
    emp_id NUMBER REFERENCES EMPLOYEE(emp_id),
    tax NUMBER(10, 2) DEFAULT 0 CHECK (tax >= 0),
    pf NUMBER(10, 2) DEFAULT 0 CHECK (pf >= 0),
    loan NUMBER(10, 2) DEFAULT 0 CHECK (loan >= 0),
    PRIMARY KEY (emp_id)
);

CREATE TABLE PAYROLL (
    payroll_id NUMBER PRIMARY KEY,
    emp_id NUMBER REFERENCES EMPLOYEE(emp_id),
    pay_date DATE,
    net_salary NUMBER(10, 2)
);
