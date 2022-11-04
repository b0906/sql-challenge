# Employee Database

In this project, I perform data modeling, data engineering, and data analysis.
#
#



## Data Modeling
Inspect the CSVs and sketch out an ERD of the tables. 
Tool reference: http://www.quickdatabasediagrams.com.


## Data Engineering
Create a table schema for each of the six CSV files specifying data types, primary keys, foreign keys, and other constraints.

* Primary keys: verify that the column is unique. Also, create a composite key, which takes two primary keys to uniquely identify a row.
* Create tables in the correct order to handle foreign keys.
* Import each CSV file into the corresponding SQL table.

Note: To avoid errors, I import the data in the same order that the tables were created. Also account for the headers when importing.


## Data Analysis
Once I have a complete database, perform these steps:

* List the following details of each employee: employee number, last name, first name, sex, and salary.
* List first name, last name, and hire date for employees who were hired in 1986.
* List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
* List the department of each employee with the following information: employee number, last name, first name, and department name.
* List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
* List all employees in the Sales department, including their employee number, last name, first name, and department name.
* List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
* List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
