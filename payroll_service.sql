/*----UC1--------*/
create database payroll_service;
show databases;
use payroll_service;

/*-------UC2-------*/
create table employee_payroll(
	id int not null auto_increment,
    name varchar(50) not null,
    salary Double not null,
    startDate Date not null,
    primary key(id)
);

desc employee_payroll;

/*--------UC3----------*/
insert into employee_payroll(name, salary, startDate) values('Ashok', 20000.0, '2021-01-01');
insert into employee_payroll(name, salary, startDate) values('John', 30000.0, '2021-01-02');
insert into employee_payroll(name, salary, startDate) values('Pooja', 250000.0, '2022-01-01');
insert into employee_payroll(name, salary, startDate) values('Kumari', 20000.0, '2022-01-04');

/*--------UC4----------*/
select * from employee_payroll;

/*--------UC5----------*/
select salary from employee_payroll where name = "Ashok";
select * from employee_payroll where startDate between cast('2022-01-01' as date) and Date(now());

/*--------UC6----------*/
alter table employee_payroll add gender char(1) after name;
update employee_payroll set gender = 'F' where id = 3;

/*--------UC7----------*/
select gender, sum(salary) from employee_payroll where gender = 'M' group by gender;
select gender, sum(salary) from employee_payroll where gender = 'F' group by gender;

select avg(salary) from employee_payroll;

select min(salary) as lowSalary from employee_payroll;
select max(salary) as highSalary from employee_payroll;

select count(gender) from employee_payroll where gender = 'M' group by gender;
select count(gender) from employee_payroll where gender = 'F' group by gender;

/*--------UC8----------*/
select * from employee_payroll;

alter table employee_payroll
add phoneno varchar(15),
add department varchar(50) not null after salary;

alter table employee_payroll
add address varchar(250) default 'Address' after phoneno;