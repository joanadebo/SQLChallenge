CREATE TABLE dept_emp (
  emp_no int NOT NULL,
  dept_no varchar(4) NOT NULL,
  PRIMARY KEY (emp_no, dept_no),
  FOREIGN KEY (emp_no)
      REFERENCES employees (emp_no),
  FOREIGN KEY (dept_no)
      REFERENCES departments (dept_no)
);
