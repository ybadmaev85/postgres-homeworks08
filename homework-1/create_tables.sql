-- SQL-команды для создания таблиц
CREATE TABLE customer
(
	customer_id char(5) PRIMARY KEY,
	company_name varchar(70) NOT NULL,
	contact_name varchar(70) NOT NULL
);

CREATE TABLE employee
(
	employee_id int PRIMARY KEY,
	first_name varchar(30) NOT NULL,
	last_name varchar(30) NOT NULL,
	title varchar(50) NOT NULL,
	birth_date date NOT NULL,
	notes text
);

CREATE TABLE orders
(
	order_id int PRIMARY KEY,
	customer_id char(5) UNIQUE REFERENCES customer(customer_id) NOT NULL,
	employee_id int REFERENCES employee(employee_id) NOT NULL,
	order_date date NOT NULL,
	ship_city varchar(50) NOT NULL
);
