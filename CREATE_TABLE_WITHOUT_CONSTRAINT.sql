-- Criação das tabelas sem as constraints de chave estrangeira

CREATE TABLE regions (
    region_id SERIAL PRIMARY KEY,       
    region_name VARCHAR(25) 
);

CREATE TABLE countries (
    country_id CHAR(2) NOT NULL PRIMARY KEY,       
    country_name VARCHAR(40), 
    region_id INTEGER
); 

CREATE TABLE locations (
    location_id SERIAL PRIMARY KEY,
    street_address VARCHAR(40),
    postal_code VARCHAR(12),
    city VARCHAR(30) NOT NULL,        
    state_province VARCHAR(25),
    country_id CHAR(2)
);

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL,        
    manager_id INTEGER,
    location_id INTEGER
);

CREATE TABLE jobs (
    job_id VARCHAR(10) PRIMARY KEY,
    job_title VARCHAR(35) NOT NULL,
    min_salary NUMERIC(6),
    max_salary NUMERIC(6)
);

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(25) NOT NULL,
    phone_number VARCHAR(20),
    hire_date TIMESTAMP NOT NULL,
    job_id VARCHAR(10) NOT NULL,
    salary NUMERIC(8,2),
    commission_pct NUMERIC(2,2),
    manager_id INTEGER,
    department_id INTEGER,
    CONSTRAINT emp_salary_min CHECK (salary > 0),
    CONSTRAINT emp_email_uk UNIQUE (email)
);

CREATE TABLE job_history (
    employee_id INTEGER NOT NULL,
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,        
    job_id VARCHAR(10) NOT NULL,
    department_id INTEGER,
    CONSTRAINT jhist_date_interval CHECK (end_date > start_date),
    PRIMARY KEY (employee_id, start_date)
);
