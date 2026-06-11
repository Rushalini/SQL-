select * from emp_info;

select concat(first_name,last_name) from emp_info;

select trim(concat(first_name,last_name))
from emp_info;

select substr("SQL TUTORIAL",5,8) AS extractstring;

select  upper(first_name),lower(last_name) from emp_info;

select character_length("Rushalini") as ch;

select character_length(first_name) as length from emp_info;

select mid("hello world",2,6);

select mid(first_name,2,4) from emp_info;