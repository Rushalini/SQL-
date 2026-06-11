use company;
 select * from ramen;
select style,count(*) as style_count from ramen group by style;

select style,country,count(*) from ramen group by style,country;

select count(stars) from ramen;

select sum(stars) from ramen;

select round(sum(stars)) from ramen;

select round(avg(stars)) from ramen;

select min(stars) from ramen;

select max(stars) from ramen;

