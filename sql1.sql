create database if not exists ineuron_sql_practise;
use  ineuron_sql_practise;

create table if not exists order_detail(
ord_no int,
purc_amt float,
ord_date date,
cust_id int,
salesman_id int);
insert into order_detail values(70001, 150.5, '2012-10-05', 3005, 5002);
insert into order_detail values(70009, 270.65, '2012-09-10', 3001,5005);
insert into order_detail values(70002, 65.26, '2012-10-05', 3002, 5001);
insert into order_detail values(70004, 110.5, '2012-08-17', 3009, 5003);
insert into order_detail values(70007, 948.5, '2012-09-10', 3005, 5002);
insert into order_detail values(70005, 2400.6, '2012-07-27', 3007, 5001);
insert into order_detail values(70008, 5760, '2012-09-10', 3002, 5001);
insert into order_detail values(70010, 1983.43, '2012-10-10', 3004, 5006);
insert into order_detail values(70003, 2480.4, '2012-10-10', 3009, 5003);
insert into order_detail values(70011, 75.29, '2012-08-17', 3003, 5007);
insert into order_detail values(70013, 3045.6, '2012-04-25', 3002, 5001);
select * from order_detail;
-- 1. Write a query to display the columns in a specific order, such as order date,
-- salesman ID, order number, and purchase amount for all orders
select  ord_date,salesman_id,ord_no,purc_amt from order_detail;