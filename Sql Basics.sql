CREATE DATABASE COLLEGE;
USE COLLEGE;
CREATE TABLE Students(St_id INT ,St_Name varchar(50),Age int,Gender varchar(2),Dept varchar(80));
alter table Students add constraint primary key (st_id); 
CREATE TABLE Department(Dept_id INT ,St_id INT,Dept_name varchar(50),primary key(Dept_id), FOREIGN KEY(St_id) REFERENCES Students(St_id));
insert into Students values(1,"Shalini",20,"F","DS"); 
insert into Students values(2,"Ravi",21,"M","AI"),(3,"Reena",15,"F","CSC"),(4,"Joy",10,"M","DS");
desc Students;
select* from Students;
