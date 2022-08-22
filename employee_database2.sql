--List the following details of each employee: 
--employee number, last name, first name, sex, and salary.
SELECT emp_no,first_name, sex, salary  
FROM "Employees"
JOIN "Salaries"
		on "Employees".emp_no = "Salaries".empt_no;

--List first name, last name, and hire date for employees 
--who were hired in 1986
select first_name, last_name, hire_date
from "Employees"
where hire_date between '1986-01-01' and '1986-12-31';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name.
SELECT "Departments".dept_no, 
		"Departments".dept_name, 
		"Dept_managers".emp_no,
		"Employees".last_name, 
		"Employees".first_name 
FROM "Departments"
INNER JOIN "Dept_managers"
		ON "Dept_managers".dept_no = "Departments".dept_no
INNER JOIN "Employees" 
		ON "Employees".emp_no = "Dept_managers".emp_no;
		
--(From here.. i was not able to figure out)

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
		
SELECT "Dept_emp".emp_no, 
		"Employees".last_name, 
		"Employees".first_name,
		"Departments".dept_name,
FROM "Dept_emp"
INNER JOIN "Employees" 
		ON "Dept_emp".emp_no = "Employees".emp_no
INNER JOIN "Departments"
		ON "Departments".dept_no = "Dept_emp".dept_no;
		
--List first name, last name, and sex for employees whose 
--first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from "Employees"
where first_name = 'Hercules';

SELECT first_name, last_name, sex
POSITION('H' in last_name) "Position of 'H'"
FROM "Employees"
WHERE substring(last_name, position('H' in last_name),1)='H';

				 
select first_name, last_name, sex
from "Employees"
where first_name = 'Hercules' in (select last_name
									POSITION('H' in last_name) "Position of 'H'"
				  					from "Employees"
				 					where substring(last_name, 
													position('H' in last_name),
													1)='H';
								 
--List all employees in the Sales department,including 
--their employee number, last name, first name, and department name.								  
SELECT "Dept_emp".emp_no, 
		"Employees".last_name, 
		"Employees".first_name,
		"Departments".dept_name,
FROM "Dept_emp"
INNER JOIN "Employees" 
		ON "Dept_emp".emp_no = "Employees".emp_no
INNER JOIN "Departments"
		ON "Departments".dept_no = "Dept_emp".dept_no
								 where dept_no = 'd007'; 
								  
--List all employees in the Sales and Development departments, including 
--their employee number, last name, first name, and department name.
SELECT "Dept_emp".emp_no, 
		"Employees".last_name, 
		"Employees".first_name,
		"Departments".dept_name,
FROM "Dept_emp"
INNER JOIN "Employees" 
		ON "Dept_emp".emp_no = "Employees".emp_no
INNER JOIN "Departments"
		ON "Departments".dept_no = "Dept_emp".dept_no
								 where dept_no = 'd007', 'd005'; 
								  
--List the frequency count of employee last names 
--(i.e., how many employees share each last name) in descending order.

SELECT last_name, COUNT(*) AS Frequency of last_name
FROM "Employees"
GROUP BY last_name
ORDER BY descending = True
DESC;
								  
						  
	