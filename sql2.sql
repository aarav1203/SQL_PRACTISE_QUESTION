use ineuron_sql_practise;
create table if not exists person(
salesman_id int,
name varchar(30),
city varchar(30),
commission float);
insert into person values(5001, 'James Hoog'  ,'New York' , 0.15);
insert into person values(5002, ' Nail Knite' , 'Paris',  0.13);
insert into person values(5005,  'Pit Alex' , 'London',  0.11);
insert into person values(5006, ' Mc Lyon',  'Paris',  0.14);
insert into person values(5007,  'Paul Adam',  'Rome' ,0.13);
insert into person values(5003, ' Lauson Hen',  'San Jose', 0.12);

select * from person;
-- 2. From the following table, write a SQL query to locate salespeople who live in the city
-- of 'Paris'. Return salesperson's name, city.
select name,city from person where city='Paris';