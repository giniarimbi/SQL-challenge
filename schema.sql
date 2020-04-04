
-- part 1: data modelling (ERD)
-- part 2: data engineering ()
-- part 3: data analysis


--part 2: data engineering
-- create a table schema for each of the six CSV files. 
-- specify data types, primary keys, foreign keys, and other constraints.

CREATE TABLE Departments (
    dept_no varchar(30)   NOT NULL,
    dept_name varchar(30)   NOT NULL
-- 	CONSTRAINT pk_Departments PRIMARY KEY (
--         dept_no
--	)
);

CREATE TABLE dept_emp (
    emp_no varchar(30)   NOT NULL,
    dept_no varchar(30)   NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL
);

CREATE TABLE Dept_manager (
    dept_no varchar(30)   NOT NULL,
    emp_no int   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

CREATE TABLE Employees (
    emp_no int   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar(35)   NOT NULL,
    last_name varchar(35)   NOT NULL,
    gender varchar(1)   NOT NULL,
    hire_date date   NOT NULL
);

CREATE TABLE Salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

CREATE TABLE Titles (
    emp_no int   NOT NULL,
    title varchar(35)   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

-- ALTER TABLE Dept_emp ADD CONSTRAINT fk_Dept_emp_emp_no FOREIGN KEY(emp_no)
-- REFERENCES Employees (emp_no);



-- specify data types, primary keys, foreign keys, and other constraints.




--part 3: data analysis 
-- 3.1) List the following details of each employee: employee number, last name, first name, gender, and salary.


-- 3.2) List employees who were hired in 1986.


-- 3.3) List the manager of each department with the following information: 
--3.3) department number, department name, the manager's employee number, last name, first name, and start and end employment dates.



-- 3.4) List the department of each employee with the following information: employee number, last name, first name, and department name.


-- 3.5) List all employees whose first name is "Hercules" and last names begin with "B."


-- 3.6) List all employees in the Sales department, including their employee number, last name, first name, and department name.


-- 3.7) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- 3.8)  In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
--count show 