--1) List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT E.emp_no, E.last_name, E.first_name, E.gender, S.salary
from employees as E
inner join salaries as S on E.emp_no=S.emp_no


--2) List employees who were hired in 1986.

select hire_date
from employees


select first_name, last_name, hire_date
from employees as E
where hire_date between '1986-01-01' and '1986-12-31'


--3) List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name, and start and end employment dates.
SELECT DM.dept_no, D.dept_name, DM.emp_no, E.last_name, E.first_name, DM.from_date, DM.to_date
FROM dept_manager as DM
join employees as E
on E.emp_no = E.emp_no
join departments as D
on DM.dept_no = D.dept_no


--4) List the department of each employee with the following information: employee number, last name, 
--first name, and department name.
SELECT E.emp_no, E.last_name, E.first_name, D.dept_name
FROM dept_manager as DM
join employees as E
on E.emp_no = E.emp_no
join departments as D
on DM.dept_no = D.dept_no


--5) List all employees whose first name is "Hercules" and last names begin with "B."
select E.first_name, E.last_name
from employees as E
where first_name = 'Hercules' and last_name like 'B%'; 

--6) List all employees in the Sales department, including their employee number, last name, first name, and department name.
select E.emp_no, E.first_name, E.last_name, D.dept_name
from employees as E
join dept_emp as DE
on E.emp_no = DE.emp_no
join departments as D 
on DE.dept_no = D.dept_no
where D.dept_name = 'Sales';



--7) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select E.emp_no, E.first_name, E.last_name, D.dept_name
from employees as E
join dept_emp as DE
on E.emp_no = DE.emp_no
join departments as D 
on DE.dept_no = D.dept_no
where D.dept_name in ('Sales', 'Development');


--8)In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT (last_name) as lastname_count
FROM employees
GROUP BY last_name
ORDER BY lastname_count DESC;
 
