/* List the following details of each employee: employee number, last name, first name, sex, and salary. */

select emp.last_name, emp.first_name, emp.sex, sal.salary
from employees emp, salaries sal
where emp.emp_no = sal.emp_no
	   
/* List first name, last name, and hire date for employees who were hired in 1986. */

select emp.last_name, emp.first_name, emp.hire_date
from employees emp
where date_part('year', hire_date) = '1996'


/* List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name. */
select dm.dept_no, dm.dept_name, emp.emp_no, emp.last_name, emp.first_name
from dept_manager dm, employees emp
where emp.emp_no = dm.emp_no
   

/* List the department of each employee with the following information: employee number, last name, first name, and department name. */
select emp.emp_no,emp.last_name, emp.first_name, de.dept_name
from dept_emp de, employees emp
where emp.emp_no = de.emp_no	   

/* List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B." */
select emp.last_name, emp.first_name, emp.sex
from  employees emp
where emp.first_name = 'Hercules'
and emp.last_name like 'B%'

/* List all employees in the Sales department, including their employee number, last name, first name, and department name. */
select emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
from  employees emp, departments dept, dept_emp de
where emp.emp_no = de.emp_no
and de.dept_no = dept.dept_no
and dept.dept_name = 'Sales'

/* List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name. */
select emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
from  employees emp, departments dept, dept_emp de
where emp.emp_no = de.emp_no
and de.dept_no = dept.dept_no
and dept.dept_name in ('Sales','Development')


/* List the frequency count of employee last names (i.e., how many employees share each last name) in descending order. */
select count(1), emp.last_name
from  employees emp
group by emp.last_name
order by count(1) desc

 
