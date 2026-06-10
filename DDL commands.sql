create database company;
use company;
create table Emp_2301(first_name varchar(30),last_name varchar(30),title varchar(35),age int,salary int);
desc Emp_2301;
alter table Emp_2301 add column Gender varchar(10);
alter table Emp_2301 modify Age int not null;
alter table Emp_2301 drop column Gender;
insert into Emp_2301 values("Rushalini","Dampetla",	"Analyst",20,60000),
("likki","Machupalli","Developer",21,50000),
("Mehatab","jan","HR",23,30000);
select * from Emp_2301;
create table Emp_info(first_name varchar(30),
last_name varchar(30),
id int primary key,
age int,
city varchar(30),
state varchar(30));
desc Emp_info;
insert into Emp_info values
('Shalini','Dampetla',101,20,'MPL','AP'),
('Ravi','Kommu',102,21,'Kurnool','AP'),
('Likki','Machupalli',103,21,'Kdr','AP'),
('Mehatab','Jan',104,50,'MPL','AP'),
('Vijay','Kommu',105,15,'Kurnool','AP'),
('Ajay','Kommu',106,16,'Kurnool','AP');
insert into Emp_info values('Mehatab','Jan',107,50,'MPL','AP');

select*from Emp_info;


select count(id) as id_count from Emp_info;

select first_name,last_name,age from Emp_info;

select count(*) from Emp_info;

select first_name from Emp_info where age>=21 and age<=50 ;

select * from Emp_info where last_name like 'K%';

select * from Emp_info where first_name like '%i';

select * from Emp_info where first_name like '%m%';																																			
