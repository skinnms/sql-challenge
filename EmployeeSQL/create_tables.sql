-- employees table
CREATE TABLE public.employees
(
    emp_no bigint,
    birth_date date,
    first_name text,
    last_name text,
    gender text,
    hire_date date,
    PRIMARY KEY (emp_no)
);

ALTER TABLE public.employees
    OWNER to postgres;

-- demp_emp table
CREATE TABLE public.demp_emp
(
    emp_no bigint,
    dept_no character varying(8),
    from_date date,
    to_date date,
    PRIMARY KEY (emp_no,dept_no)
);

ALTER TABLE public.demp_emp
    OWNER to postgres;

-- titles table
CREATE TABLE public.titles
(
    emp_no bigint,
    title text,
    from_date date,
    to_date date,
    PRIMARY KEY (emp_no)
);

ALTER TABLE public.titles
    OWNER to postgres;


-- salaries table
CREATE TABLE public.salaries
(
    emp_no bigint,
    salary bigint,
    from_date date,
    to_date date,
    PRIMARY KEY (emp_no)
);

ALTER TABLE public.salaries
    OWNER to postgres;


-- departments table
CREATE TABLE public.departments
(
    dept_no character varying (8),
    dept_name text,
    PRIMARY KEY (dept_no)
);

ALTER TABLE public.departments
    OWNER to postgres;


-- dept_manager table
CREATE TABLE public.dept_manager
(
    emp_no bigint,
    dept_no character varying (8),
    from_date date,
    to_date date,
    PRIMARY KEY (emp_no)
);

ALTER TABLE public.dept_manager
    OWNER to postgres;