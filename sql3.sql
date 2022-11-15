use ineuron_sql_practise;
create table if not exists product(
prod_id int,
prod_name varchar(50),
prod_price float,
prod_com int);
insert into product values(101,' Motherboard', 3200.00, 15);
insert into product values(102, 'Keyboard', 450.00, 16);
insert into product values(103, 'ZIP drive' ,250.00, 14);
insert into product values(104, 'Speaker', 550.00, 16);
insert into product values(105, 'Monitor', 5000.00, 11);
insert into product values(106, 'DVD drive', 900.00, 12);
insert into product values(107, 'CD drive', 800.00, 12);
insert into product values(108, 'Printer', 2600.00, 13);
insert into product values(109, 'Refill cartridge', 350.00, 13);
insert into product values(110, 'Mouse', 250.00, 12);
insert into product values(111, 'Pen Drive', 600.00, 20);
insert into product values(112, 'Office Chair', 200.00, 10);


select * from product;
-- 3. From the following table, write a SQL query to select a range of products whose
-- price is in the range Rs.200 to Rs.600. Begin and end values are included. Return
-- pro_id, pro_name, pro_price, and pro_com

select * from product where prod_price between 200 and 600;

-- 4. From the following table, write a SQL query to find the items whose prices are
-- higher than or equal to $550. Order the result by product price in descending, then
-- product name in ascending

select * from product where prod_price >=550 order by prod_price desc,prod_name asc;