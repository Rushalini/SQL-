use company;
select * from Ramen;

select count(*) from Ramen;

select * from Ramen where style like 't%';

select count(*) from Ramen where style regexp '^p';

select * from Ramen where style like '%P%' or
style like '%B%';

select count(*) from Ramen where style like '%P%' or
 style like '%B%';

select *from Ramen where style regexp '[pb]';

select count(*) from Ramen where style regexp '[p%t%]';

select count(*) from Ramen where style regexp '[pt]';

select *from Ramen where country  regexp '[t]';
