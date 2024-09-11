-- Adicionando as constraints de chave estrangeira e outras constraints

-- Constraints de chave estrangeira

ALTER TABLE countries 
    ADD CONSTRAINT fk_countries_regions
    FOREIGN KEY (region_id) REFERENCES regions (region_id);

ALTER TABLE locations 
    ADD CONSTRAINT fk_locations_countries
    FOREIGN KEY (country_id) REFERENCES countries (country_id);

ALTER TABLE departments 
    ADD CONSTRAINT fk_departments_location
    FOREIGN KEY (location_id) REFERENCES locations (location_id);

ALTER TABLE employees 
    ADD CONSTRAINT fk_employees_jobs
    FOREIGN KEY (job_id) REFERENCES jobs (job_id),
    ADD CONSTRAINT fk_employees_manager
    FOREIGN KEY (manager_id) REFERENCES employees (employee_id),
    ADD CONSTRAINT fk_employees_departments
    FOREIGN KEY (department_id) REFERENCES departments (department_id);

ALTER TABLE departments 
    ADD CONSTRAINT fk_departments_manager
    FOREIGN KEY (manager_id) REFERENCES employees (employee_id);

ALTER TABLE job_history 
    ADD CONSTRAINT fk_job_history_employees
    FOREIGN KEY (employee_id) REFERENCES employees (employee_id),
    ADD CONSTRAINT fk_job_history_jobs
    FOREIGN KEY (job_id) REFERENCES jobs (job_id),
    ADD CONSTRAINT fk_job_history_departments
    FOREIGN KEY (department_id) REFERENCES departments (department_id);
