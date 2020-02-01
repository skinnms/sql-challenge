-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [employees]
(
    [emp_no] bigint NOT NULL ,
    [birth_date] date NOT NULL ,
    [first_name] text NOT NULL ,
    [last_name] text NOT NULL ,
    [gender] text NOT NULL ,
    [hire_date] date NOT NULL ,
    CONSTRAINT [PK_employees] PRIMARY KEY CLUSTERED (
        [emp_no] ASC
    )
)

CREATE TABLE [dept_emp]
(
    [emp_no] bigint NOT NULL ,
    [dept_no] varchar(8) NOT NULL ,
    [from_date] date NOT NULL ,
    [to_date] date NOT NULL ,
    CONSTRAINT [PK_dept_emp] PRIMARY KEY CLUSTERED (
        [emp_no] ASC,[dept_no] ASC
    )
)

CREATE TABLE [titles]
(
    [emp_no] bigint NOT NULL ,
    [title] int NOT NULL ,
    [from_date] date NOT NULL ,
    [to_date] date NOT NULL ,
    CONSTRAINT [PK_titles] PRIMARY KEY CLUSTERED (
        [emp_no] ASC
    )
)

CREATE TABLE [salaries]
(
    [emp_no] bigint NOT NULL ,
    [salary] bigint NOT NULL ,
    [from_date] date NOT NULL ,
    [to_date] date NOT NULL ,
    CONSTRAINT [PK_salaries] PRIMARY KEY CLUSTERED (
        [emp_no] ASC
    )
)

CREATE TABLE [departments]
(
    [dept_no] varchar(8) NOT NULL ,
    [dept_name] text NOT NULL ,
    CONSTRAINT [PK_departments] PRIMARY KEY CLUSTERED (
        [dept_no] ASC
    )
)

CREATE TABLE [dept_manager]
(
    [emp_no] bigint NOT NULL ,
    [dept_no] varchar(8) NOT NULL ,
    [from_date] date NOT NULL ,
    [to_date] date NOT NULL ,
    CONSTRAINT [PK_dept_manager] PRIMARY KEY CLUSTERED (
        [emp_no] ASC
    )
)

ALTER TABLE [employees] WITH CHECK ADD CONSTRAINT [FK_employees_emp_no] FOREIGN KEY([emp_no])
REFERENCES [salaries] ([emp_no])

ALTER TABLE [employees] CHECK CONSTRAINT [FK_employees_emp_no]

ALTER TABLE [dept_emp] WITH CHECK ADD CONSTRAINT [FK_dept_emp_emp_no] FOREIGN KEY([emp_no])
REFERENCES [employees] ([emp_no])

ALTER TABLE [dept_emp] CHECK CONSTRAINT [FK_dept_emp_emp_no]

ALTER TABLE [dept_emp] WITH CHECK ADD CONSTRAINT [FK_dept_emp_dept_no] FOREIGN KEY([dept_no])
REFERENCES [departments] ([dept_no])

ALTER TABLE [dept_emp] CHECK CONSTRAINT [FK_dept_emp_dept_no]

ALTER TABLE [titles] WITH CHECK ADD CONSTRAINT [FK_titles_emp_no] FOREIGN KEY([emp_no])
REFERENCES [employees] ([emp_no])

ALTER TABLE [titles] CHECK CONSTRAINT [FK_titles_emp_no]

ALTER TABLE [dept_manager] WITH CHECK ADD CONSTRAINT [FK_dept_manager_emp_no] FOREIGN KEY([emp_no])
REFERENCES [departments] ([dept_no])

ALTER TABLE [dept_manager] CHECK CONSTRAINT [FK_dept_manager_emp_no]

COMMIT TRANSACTION QUICKDBD