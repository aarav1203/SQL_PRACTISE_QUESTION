use ineuron_sql_practise;
create table if not exists  order_details(
ord_no int,
purch_amt float,
ord_date date,
customer_id int,
salesperson_id int
);
insert into order_details values(70001, 150.5, '2012-10-05', 3005 ,5002);
insert into order_details values(70009, 270.65, '2012-09-10', 3001, 5005);
insert into order_details values(70002, 65.26, '2012-10-05', 3002 ,5001);
insert into order_details values(70004, 110.5, '2012-08-17', 3009, 5003);
insert into order_details values(70007, 948.5, '2012-09-10', 3005, 5002);
insert into order_details values(70005, 2400.6, '2012-07-27', 3007, 5001);
insert into order_details values(70008, 5760, '2012-09-10', 3002, 5001);
insert into order_details values(70010 ,1983.43, '2012-10-10', 3004, 5006);
insert into order_details values(70003, 2480.4, '2012-10-10', 3009, 5003);
insert into order_details values(70012, 250.45, '2012-06-27', 3008, 5002);
insert into order_details values(70011, 75.29, '2012-08-17', 3003, 5007);
insert into order_details values(70013, 3045.6, '2012-04-25', 3002, 5001);
select * from order_details;

-- 5. From the following table, write a SQL query to find details of all orders excluding
-- those with ord_date equal to '2012-09-10' and salesman_id higher than 5005 or
-- purch_amt greater than 1000.Return ord_no, purch_amt, ord_date, customer_id and
-- salesman_id.
select * from order_details
where (ord_date !=2012-09-10 and salesperson_id>5005) or purch_amt>1000;