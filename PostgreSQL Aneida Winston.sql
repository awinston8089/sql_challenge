select * from department
select * from dept_emp;
select * from employee


--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
From employee e
Join salaries s
On e.emp_no = s.emp_no;


-- 2. List first name, last name, and hire date for employees who were hired in 1986.

Select first_name, last_name, hire_date
From employee 
Where hire_date between '1986-01-01' and '1986-12-31';


-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
From employee e 
join dept_mgr m
On e.emp_no = m.emp_no
Join department d 
On d.dept_no = m.dept_no;


-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
Select de.emp_no, e.last_name, e.first_name, d.dept_name
From employee e
join dept_emp de
On e.emp_no = de.emp_no
Join department d 
On d.dept_no = de.dept_no;


-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select first_name, last_name, sex 
From employee
Where first_name = 'Hercules' and last_name like 'B%';


-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select de.emp_no, e.last_name, e.first_name, d.dept_name
From employee e
join dept_emp de
On e.emp_no = de.emp_no
Join department d 
On d.dept_no = de.dept_no
Where d.dept_name = 'Sales';



-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select de.emp_no, e.last_name, e.first_name, d.dept_name
From employee e
join dept_emp de
On e.emp_no = de.emp_no
Join department d 
On d.dept_no = de.dept_no
Where d.dept_name = 'Sales' or d.dept_name = 'Development';


-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Select last_name, Count (last_name)as "number of last name"
From employee 
Group by last_name
Order by 2 desc;






