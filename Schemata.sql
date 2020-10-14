CREATE TABLE department (
dept_no varchar not null,
dept_name varchar not null,
	constraint pk_dept primary key(dept_no));
	
	
CREATE TABLE depart_emp (
emp_no varchar not null,
dept_no varchar not null,
	constraint pk_depart_emp primary key(dept_no));

CREATE TABLE dept_mgr (
dept_no varchar not null,
emp_no varchar not null,
	constraint pk_dept_mgr primary key(dept_no));



CREATE TABLE employee (
emp_no int not null,
emp_title_id varchar not null,
birth_date date not null,
first_name varchar(30) not null,
last_name varchar(30) not null,
sex varchar(1) not null,
hire_date date not null,
	primary key(emp_no));
	
	
	