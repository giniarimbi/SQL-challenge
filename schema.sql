CREATE TABLE Dept_manager (
    dept_no varchar(30)   NOT NULL,
    emp_no int   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

CREATE TABLE Departments (
    dept_no varchar(30)   NOT NULL,
    dept_name varchar(30)   NOT NULL
	CONSTRAINT PK_Departments PRIMARY KEY (
		dept_no
	)
);
	
CREATE TABLE Titles (
    emp_no int   NOT NULL,
    title varchar(35)   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);
	
CREATE TABLE Salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);
	

CREATE TABLE Employees (
    emp_no int   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar(35)   NOT NULL,
    last_name varchar(35)   NOT NULL,
    gender varchar(1)   NOT NULL,
    hire_date date   NOT NULL,
	CONSTRAINT pk_Departments PRIMARY KEY (
		emp_no
	)
);

CREATE TABLE dept_emp (
    emp_no int   NOT NULL,
    dept_no varchar(30)   NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL
);

ALTER TABLE dept_manager 
ADD CONSTRAINT FK FOREIGN KEY (emp_no) REFERENCES employees (emp_no)

ALTER TABLE salaries 
ADD CONSTRAINT FK FOREIGN KEY (emp_no) REFERENCES employees (emp_no)

ALTER TABLE titles 
ADD CONSTRAINT FK FOREIGN KEY (emp_no) REFERENCES employees (emp_no)

--cek dept_emp type of emp_no
ALTER TABLE dept_emp
ADD CONSTRAINT FK FOREIGN KEY (emp_no) REFERENCES employees (emp_no)

ALTER TABLE dept_emp 
ALTER COLUMN emp_no TYPE INT USING emp_no::integer;

--cek dept_emp type of emp_no

ALTER TABLE dept_emp
ADD CONSTRAINT FK FOREIGN KEY (dept_no) REFERENCES Departments (dept_no)

ALTER TABLE dept_manager
ADD CONSTRAINT FK FOREIGN KEY (dept_no) REFERENCES Departments (dept_no)
--error: constraint "fk" for relation "dept_manager" already exists


--1) change si data type emp_no in Dept_Emp 2) primary key set for Dept and Employee 3) cek yg udah exist

