use ineuron_sql_practise;
create table if not exists product_quality(
product_id int,
low_fats enum('y','n'),
recyclable enum('y','n')
);
insert into product_quality values(0,'y', 'n');
insert into product_quality values(1, 'n', 'y' );
insert into product_quality values(2,'n',  'y' );
insert into product_quality values(3, 'y',  'y');
insert into product_quality values( 4, 'n', 'n' );

update product_quality set low_fats='y' where product_id=1;
SET SQL_SAFE_UPDATES = 0;
select * from product_quality;
-- Write an SQL query to find the ids of products that are both low fat and recyclable.
-- Return the result table in any order.
select product_id from product_quality
where low_fats='y' and recyclable='y';