create database sql_joins;
use sql_joins;

create table cus_info
(
cus_name varchar(30),
cus_id int primary key,
address varchar(40),
city varchar(50),
postalcode varchar(30),
country varchar(30)
);
desc cus_info;

create table order_info
(
order_id int primary key,
cus_id int,
emp_id int,
orderdate datetime,
shipper_id int
);

insert into cus_info values
('Shalini',1,'Society colony','MPL',517325,'INDIA'),
('Varshi',2,'SBI colony','MPL',517326,'CANADA'),
('Thanu',3,'GP','BLR',100325,'BANGKOK'),
('Likki',4,'KDR','MPL',517657,'INDIA'),
('Mehatab',5,'hdp','Hyd',517124,'USA');

insert into cus_info values
('RAVI',7,'Society colony','MPL',517325,'INDIA');

INSERT INTO order_info
(order_id, cus_id, emp_id, orderdate, shipper_id)
VALUES
( 101,1, 201, sysdate(), 1),
( 102,2, 202, sysdate(), 2),
( 103,3, 203, sysdate(), 1),
( 104, 4,201, sysdate(), 3),
(105, 5,204, sysdate(), 2);


INSERT INTO order_info
(order_id, cus_id, emp_id, orderdate, shipper_id)
VALUES
( 108,8, 201, sysdate(), 1);
SELECT *FROM ORDER_INFO;

SELECT c.cus_id,c.cus_name,c.country,o.order_id,o.orderdate
from cus_info c left join order_info o 
on c.cus_id=o.cus_id;

SELECT c.cus_id,c.cus_name,c.country,o.order_id,o.orderdate
from cus_info c right join order_info o 
on c.cus_id=o.cus_id;

SELECT c.cus_id,c.cus_name,c.country,o.order_id,o.orderdate
from cus_info c inner  join order_info o 
on c.cus_id=o.cus_id;

SELECT c.cus_id,c.cus_name,c.country,o.order_id,o.orderdate
from cus_info c left OUTER join order_info o 
on c.cus_id=o.cus_id 
UNION
SELECT c.cus_id,c.cus_name,c.country,o.order_id,o.orderdate
from cus_info c right OUTER join order_info o 
on c.cus_id=o.cus_id;

SELECT CUS_INFO.*, ORDER_INFO.*
FROM CUS_INFO
LEFT JOIN ORDER_INFO
ON CUS_INFO.CUS_id = ORDER_INFO.CUS_id

UNION

SELECT CUS_INFO.*, ORDER_INFO .*
FROM CUS_INFO
RIGHT JOIN  ORDER_INFO
ON .CUS_id =  ORDER_INFO.CUS_id;

SELECT CUS_INFO.cus_id
FROM CUS_INFO
INNER JOIN ORDER_INFO 
ON CUS_INFO.CUS_id = ORDER_INFO .CUS_id;

#intersect

SELECT *
FROM CUS_INFO
INNER JOIN ORDER_INFO
ON CUS_INFO.CUS_ID = ORDER_INFO.CUS_ID;





