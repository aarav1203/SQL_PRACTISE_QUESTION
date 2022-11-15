use ineuron_sql_practise;
create table if not exists geographical(
name varchar(50),
continent varchar(50),
area bigint,
population bigint,
gdp bigint
);
insert into geographical values('Afghanistan', 'Asia', 652230, 25500100, 20343000000);
insert into geographical values('Albania', 'Europe',28748, 2831741, 12960000000);
insert into geographical values('Algeria', 'Africa', 2381741, 37100000, 188681000000);
insert into geographical values('Andorra', 'Europe', 468, 78115, 3712000000);
insert into geographical values('Angola', 'Africa', 1246700, 20609294, 100990000000);
insert into geographical values('Dominican', 'Republic Caribbean', 48671, 9445281, 58898000000);
insert into geographical values('China', 'Asia', 9596961, 1365370000, 8358400000000);
insert into geographical values('Colombia', 'South America', 1141748,47662000, 369813000000);
insert into geographical values('Comoros', 'Africa', 1862, 743798, 616000000);
insert into geographical values('Denmark', 'Europe', 43094, 5634437, 314889000000);
insert into geographical values('Djibouti', 'Africa',23200, 886000, 1361000000);
insert into geographical values('Dominica','Caribbean', 751, 71293, 499000000);
select * from geographical;
-- 1. Write a query to fetch which country has the highest population?
select * from geographical where population=(select max(population) from geographical);

-- 2.write a query to fetch the name of the country which has the least gdp?
select * from geographical where gdp=(select min(gdp) from geographical);
-- 3. Write a query to fetch the name of the country which ends with letter C?
select * from geographical where name like '%C';

-- 4.write a query to fetch the name of the country which starts with letter D?
select * from geographical where name like 'D%';

-- 5.write query to fetch which continent has highest gdp?
select continent,sum(population) total_population from geographical group by continent order by sum(population) desc limit 1;

-- 6.Give the total GDP of Africa?
select continent, sum(gdp) total_gdp from geographical where continent='Africa';

-- 7.write a query to fetch the total population for each continent?
select continent,sum(population) total_population from geographical group by continent order by total_population;

-- 8. For each relevant continent show the number of countries that has a population of at least 200000000?
select continent,count(name) as no_of_country from geographical where population>=200000000
group by continent;

