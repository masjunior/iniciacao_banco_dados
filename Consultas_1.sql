-- 1. Selecionar Todos os Funcionários
SELECT * FROM employees;
-- •	Retorna todos os registros da tabela employees, mostrando detalhes como employee_id, first_name, last_name, email, hire_date, salary, etc.

-- 2. Selecionar Funcionários Com Salário Maior que 5000
SELECT first_name, last_name, salary 
       FROM employees 
WHERE salary > 5000;
-- •	Mostra o nome, sobrenome e salário dos funcionários que ganham mais de 5000.

-- 3. Ordenar Funcionários por Salário (Decrescente)
SELECT first_name, last_name, salary 
       FROM employees 
ORDER BY salary DESC;
-- •	Exibe os funcionários em ordem decrescente de salário.

-- 4. Contar o Número Total de Funcionários
SELECT COUNT(*) AS total_funcionarios 
       FROM employees;
-- •	Retorna o número total de funcionários na tabela employees.

5. Agrupar Funcionários por Departamento
SELECT department_id, COUNT(*) AS total_funcionarios 
FROM employees 
GROUP BY department_id;
-- •	Agrupa os funcionários por department_id e mostra quantos funcionários pertencem a cada departamento.

-- 6. Consultar Funcionários com o Cargo de 'Programmer'
SELECT first_name, last_name, job_id 
FROM employees 
WHERE job_id = 'IT_PROG';
-- •	Retorna todos os funcionários cujo cargo é IT_PROG (Programmer).

-- 7. Selecionar Funcionários que Foram Admitidos em 2021
SELECT first_name, last_name, hire_date 
FROM employees 
WHERE EXTRACT(YEAR FROM hire_date) = 2021;
-- •	Exibe os funcionários admitidos no ano de 2021.

8. Somar o Salário de Todos os Funcionários de um Departamento Específico
SELECT department_id, SUM(salary) AS total_salarios 
FROM employees 
WHERE department_id = 10
GROUP BY department_id;
-- •	Calcula a soma dos salários dos funcionários que trabalham no departamento de ID 10.

-- 9. Listar Funcionários e Seus Gerentes (Auto-Join na Mesma Tabela)
SELECT e.first_name || ' ' || e.last_name AS funcionario, 
       m.first_name || ' ' || m.last_name AS gerente 
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.employee_id;
-- •	Lista cada funcionário com seu respectivo gerente, usando um auto-join na mesma tabela employees.

-- 10. Obter os 5 Funcionários com os Maiores Salários
SELECT first_name, last_name, salary 
FROM employees 
ORDER BY salary DESC 
LIMIT 5;
-- •	Exibe os 5 funcionários com os maiores salários. O comando LIMIT funciona no PostgreSQL, enquanto no Oracle pode-se usar ROWNUM.

-- 11. Listar os Departamentos e as Cidades em que Estão Localizados (Join com a Tabela Locations)
SELECT d.department_name, l.city 
FROM departments d
JOIN locations l ON d.location_id = l.location_id;
-- •	Lista os departamentos e as cidades em que estão localizados, utilizando um JOIN com a tabela locations.

-- 12. Selecionar o Salário Médio por Departamento
SELECT department_id, AVG(salary) AS salario_medio 
FROM employees 
GROUP BY department_id;
-- •	Calcula o salário médio para cada departamento, agrupando os dados por department_id.

-- 13. Encontrar Funcionários que Não Têm Gerente
SELECT first_name, last_name 
FROM employees 
WHERE manager_id IS NULL;
-- •	Lista os funcionários que não têm gerente, ou seja, cujo manager_id é NULL.

-- 14. Consultar o Histórico de Trabalhos de um Funcionário Específico
SELECT e.first_name, e.last_name, j.start_date, j.end_date, j.job_id 
FROM employees e
JOIN job_history j ON e.employee_id = j.employee_id
WHERE e.employee_id = 101;
-- •	Exibe o histórico de cargos (job history) de um funcionário específico, usando um JOIN entre as tabelas employees e job_history.

-- 15. Consultar Funcionários com Salário Abaixo da Média Salarial
SELECT first_name, last_name, salary 
FROM employees 
WHERE salary < (SELECT AVG(salary) FROM employees);
-- •	Lista os funcionários cujo salário é inferior à média salarial de todos os funcionários.
