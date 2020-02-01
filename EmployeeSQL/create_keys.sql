ALTER TABLE public.dept_manager 
ADD CONSTRAINT fk_dept_manager_dept_no 
FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE public.dept_manager 
ADD CONSTRAINT fk_dept_manager_emp_no 
FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE public.salaries 
ADD CONSTRAINT fk_salaries_emp_no 
FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE public.dept_emp 
ADD CONSTRAINT fk_dept_emp_emp_no 
FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE public.dept_emp 
ADD CONSTRAINT fk_dept_emp_dept_no 
FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE public.titles 
ADD CONSTRAINT fk_titles_emp_no 
FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);