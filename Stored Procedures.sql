create database fun;

use fun;

create table players
(
p_id int,
p_name varchar(20),
country varchar(30),
goals int
);

insert into players  values 
(1,'Ronaldo','Portugal',120),
(2,'Messi','Argentina',150),
(3,'Neymar','Brazil',75),
(4,'Ravi','India',100),
(5,'Joy','USA',30);
insert into players  values 
(6,'Rolex','Portugal',140);

select * from players;

select * from players where goals>100;
delimiter &&
create procedure top_player()
begin
select p_name,country,goals from players where goals>100;
end&&
delimiter ;

CALL TOP_PLAYER();

SELECT P_NAME,GOALS FROM PLAYERS ORDER BY GOALS DESC LIMIT 1; 

DELIMITER &&
CREATE PROCEDURE TOP_ON_GOAL(IN NUM  INT)
BEGIN
SELECT P_NAME,COUNTRY, GOALS FROM PLAYERS order by GOALS DESC LIMIT 3;
END &&
DELIMITER ;

CALL TOP_ON_GOAL(3);

DELIMITER &&
CREATE PROCEDURE TOP_GOAL(IN NUM  INT)
BEGIN
SELECT P_NAME,COUNTRY, GOALS FROM PLAYERS order by GOALS DESC LIMIT 3;
END &&
DELIMITER ;

CALL TOP_GOAL(3);
set sql_safe_updates=0;

UPDATE PLAYERS SET GOALS =200 WHERE P_NAME='ravi';

delimiter // 
create procedure update_player(in num int,in player varchar(20))
begin
update players set goals=num where p_name=player;
end //
delimiter ;

call update_player(250,'Ronaldo');

delimiter //
create procedure count_country2(in var varchar(20),out total_player int)
begin
select count(*) from players where country=var into total_player;
end //
delimiter ;

call count_country2('Portugal',@total_count);

select @total_count as count_country2;

select * from players;
