use company;
create table Emp_old(first_name varchar(30),last_name varchar(30),designation varchar(30),age int,salary int);
insert into Emp_old values("Rushalini","Dampetla",	"Analyst",20,60000),
("likki","Machupalli","Developer",21,50000),
("Mehatab","jan","HR",23,30000),
("Ravi","Kommu","Scientist",22,60000),
("Varshi","Amanchi","Programmer",21,55000);
select * from Emp_old;

select first_name,salary from Emp_old;

select first_name,salary from Emp_old where designation='Analyst';

select first_name,salary from Emp_old where first_name like 'R%';

select first_name,designation,salary from Emp_old where designation like '%er';

select first_name,salary from Emp_old where first_name like '_i%';

