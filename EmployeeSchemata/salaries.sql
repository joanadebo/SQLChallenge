CREATE TABLE salaries (
  emp_no int NOT NULL,
  salary float(2) NOT NULL,
  PRIMARY KEY (emp_no),
  FOREIGN KEY (emp_no)
      REFERENCES employees (emp_no)
);
Select * From salaries