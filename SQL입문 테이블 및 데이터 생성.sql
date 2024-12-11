
-- employees 테이블 생성
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    hire_date DATE NOT NULL,
    department_id INT,
    salary DECIMAL(10, 2)
);

-- employees 데이터 삽입
INSERT INTO employees (first_name, last_name, hire_date, department_id, salary)
VALUES
    ('John', 'Doe', '2020-01-15', 1, 55000.00),
    ('Jane', 'Smith', '2019-11-20', 2, 62000.00),
    ('Alice', 'Johnson', '2021-06-10', 1, 50000.00),
    ('Bob', 'Brown', '2022-02-25', 3, 45000.00),
    ('Emily', 'Davis', '2018-03-14', 2, 73000.00),
    ('Michael', 'Wilson', '2017-07-19', 1, 80000.00),
    ('Sarah', 'Lee', '2016-11-25', 3, 47000.00),
    ('Daniel', 'Clark', '2020-05-23', 1, 54000.00),
    ('Laura', 'Taylor', '2021-08-12', 2, 60000.00),
    ('Chris', 'Anderson', '2019-04-30', 3, 51000.00);

-- departments 테이블 생성
CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- departments 데이터 삽입
INSERT INTO departments (department_name)
VALUES
    ('Human Resources'),
    ('Engineering'),
    ('Marketing'),
    ('Sales'),
    ('Finance'),
    ('IT'),
    ('Legal'),
    ('Operations'),
    ('Customer Support'),
    ('R&D');

-- projects 테이블 생성
CREATE TABLE projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE
);

-- projects 데이터 삽입
INSERT INTO projects (project_name, start_date, end_date)
VALUES
    ('Website Redesign', '2023-01-10', '2023-06-30'),
    ('Product Launch', '2023-03-01', '2023-12-31'),
    ('Market Research', '2023-05-15', '2023-09-15'),
    ('App Development', '2023-02-20', '2023-11-10'),
    ('Cloud Migration', '2022-10-01', '2023-04-30'),
    ('SEO Optimization', '2023-07-01', '2023-12-15'),
    ('New Office Setup', '2023-04-15', '2023-08-30'),
    ('CRM Implementation', '2023-03-10', '2023-09-01'),
    ('Data Analysis', '2023-06-01', '2023-10-15'),
    ('Social Media Campaign', '2023-01-25', '2023-07-15');

-- employee_projects 테이블 생성
CREATE TABLE employee_projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    project_id INT NOT NULL,
    assigned_date DATE,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

-- employee_projects 데이터 삽입
INSERT INTO employee_projects (employee_id, project_id, assigned_date)
VALUES
    (1, 1, '2023-01-15'),
    (2, 2, '2023-03-05'),
    (3, 3, '2023-02-20'),
    (4, 4, '2023-05-20'),
    (5, 5, '2022-11-01'),
    (6, 6, '2023-07-10'),
    (7, 7, '2023-04-20'),
    (8, 8, '2023-03-15'),
    (9, 9, '2023-06-05'),
    (10, 10, '2023-01-30');
