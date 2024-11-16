DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);
SELECT * FROM departments LIMIT 100;
select * from departments;

CREATE TABLE titles(
	title_id VARCHAR  PRIMARY KEY,
	title VARCHAR NOT NULL
);
SELECT * FROM titles LIMIT 100;
select * from titles ;


CREATE TABLE employees(
	emp_no INT PRIMARY KEY, 
	emp_title_id VARCHAR NOT NULL, 
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL, 
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL, 
	hire_date DATE NOT NULL, 
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

SELECT * FROM employees LIMIT 100;
select * from  employees;


CREATE TABLE dept_emp (
	emp_no INT NOT NULL, 
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);
SELECT * FROM dept_emp LIMIT 100;
select * from dept_emp;

CREATE TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM salaries LIMIT 100;
select * from salaries ;


CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL, 
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no), 
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no), 
	PRIMARY KEY (dept_no, emp_no)
);
SELECT * FROM dept_manager LIMIT 100;
select * from dept_manager;












