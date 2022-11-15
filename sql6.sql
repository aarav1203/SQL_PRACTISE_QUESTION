use ineuron_sql_practise;
create table students(student_id int,
student_name varchar(60) not null,
city varchar(60) not null,
primary key(student_id));
create table course(student_id int,
course_name varchar(60) not null,
Marks int not null,
primary key(student_id),
foreign key(student_id) references students(student_id));
insert into students values(200,'John Doe','Delhi'),
(210,'John Doe','Delhi'),
(220,'Moon ethan','Rajasthan'),
(230,'Jessie','Bangalore'),
(240,'Benbrook','Bihar'),
(250,'Ethan','Bihar'),
(260,'Johnnie','Bangalore'),
(270,'Goh','Delhi'),(380,'John Doe','Delhi'),
(280,'Pavi','Delhi'),
(290,'Sanvi','Rajasthan'),
(300,'Navyaa','Bangalore'),
(310,'Ankul','Bihar'),
(311,'Hitanshi','Bihar'),
(312,'Aayush','Bangalore'),
(313,'Rian','Delhi');
insert into course values(200,'Datascience',75),
(210,'Datascience',75),
(220,'Dataanalyst',80),
(230,'Dataanalyst',80),
(240,'Dataanalyst',84),
(250,'Dataanalyst',50),
(260,'Datascience',80),
(270,'Datascience',99),
(380,'Datascience',45),
(280,'Datascience',78),
(290,'Dataanalyst',78),
(300,'Computer vision',90),
(310,'Computer vision',90),
(311,'Computer vision',75),
(312,'Computer vision',39);

select * from students;
select * from course;

-- Questions :
-- q1. write a query to fetch the names of the students having maximum marks in each
-- course?
with cte as(
select s.student_id id,s.student_name name,c.course_name course,c.marks marks,s.city city
from students s inner join course c 
on s.student_id=c.student_id)
select name,marks,course from cte c where c.marks=(select max(marks) from cte where c.course=course group by course);

-- q2. write a query to fetch the names of the students having 3th highest marks from each course?
with cte as(
select s.student_id id,s.student_name name,c.course_name course,c.marks marks,s.city city
from students s inner join course c 
on s.student_id=c.student_id)
select name,marks,course from(
select name,marks,course,dense_rank() over(partition by course order by marks desc) as rn 
from cte)a where rn=3;

-- q3. write a query to fetch the names of the students having minimum marks in each course?
with cte as(
select s.student_id id,s.student_name name,c.course_name course,c.marks marks,s.city city
from students s inner join course c 
on s.student_id=c.student_id)
select name,marks,course from cte c where c.marks=(select min(marks) from cte where c.course=course group by course);

-- q4. write a query to fetch the names of the students having 4th least marks from each course?
with cte as(
select s.student_id id,s.student_name name,c.course_name course,c.marks marks,s.city city
from students s inner join course c 
on s.student_id=c.student_id)
select name,marks,course from(
select name,marks,course,dense_rank() over(partition by course order by marks asc) as rn 
from cte)a where rn=4;

-- q5. write a query to fetch the city name of the students who have 2nd highest marks?
with cte as(
select s.student_id id,s.student_name name,c.course_name course,c.marks marks,s.city city
from students s inner join course c 
on s.student_id=c.student_id)
select name,city from(
select name,marks,city,dense_rank() over(partition by course order by marks desc) as rn 
from cte)a where rn=2;

-- q6. write a query to fetch the count of each city?
select city,count(*) as total_count from students group by city;

-- q7. write a query to fetch the names of the students who are from the same city?
select city,group_concat(distinct student_name) from students group by city;

-- q8.write a query to fetch the names of students starting with 'A'?
select student_name from students where student_name like 'A%';

-- q9.write a query to fetch the count of students' names having the same marks in each course?
with cte as(
select c1.student_id,c1.course_name,c1.marks from course c1 inner join course c2 
on c1.course_name=c2.course_name and c1.marks=c2.marks and c1.student_id<>c2.student_id)
select course_name,count(student_id) as student_count
from cte group by course_name;

-- q10.write a query to fetch the count of students from each city
select city,count(*) total_students from students group by city;