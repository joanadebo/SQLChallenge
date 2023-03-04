CREATE TABLE employees (
  emp_no INT NOT NULL,
  emp_title_id varchar(10),
  birth_date date,
  first_name varchar(30),
  last_name varchar(30),
  sex char(1),
  hire_date date,
  PRIMARY KEY (emp_no),
  FOREIGN KEY (emp_title_id)
      REFERENCES titles (title_id)
);

Select * From employees