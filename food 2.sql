create database foodDb

use foodDb

create table categories(
categoryid int primary key auto_increment,
categoryName varchar(50)
);

create table fooditems(
foodid int primary key auto_increment,
foodname varchar(100),
price decimal(8, 2),
categoryid int,
stock int,
foreign key (categoryid) 
      references categories(categoryid)
      );
      
insert into categories (categoryName)
values
('fast food'),
('beverages'),
('desserts');

insert into fooditems (foodname, price, categoryid, stock)
values
('pizza',299.00,1,20),
('burger',149.00,1,35),
('french fries',99.00,1,50),
('coke',49.00,2,80),
('ice cream',120.00,3,25);


select * from fooditems

select foodname, price from fooditems

select * from fooditems
where price > 100;

select * from fooditems
where price > 100
and stock > 20;

select * from fooditems 
where foodname = 'pizza'
or foodname = 'burger';

select * from fooditems
where foodname like 'B%';

select * from fooditems
where price between 100 and 300;

select * from fooditems
order by price asc;

select * from fooditems
order by categoryid desc;

select * from fooditems
limit 5;

select count(*) as totalfooditems
from fooditems;

select sum(stock) as totalstock
from fooditems;

select avg(price) as highestprice
from fooditems;

select max(price) as highestprice
from fooditems;

select min(price) as lowestprice
from fooditems;


select 
categoryid,
count(*) as numberofitems
from fooditems
group by categoryid;

select
categoryid,
avg(price) as averageprice
from fooditems
group by categoryid;

select 
categoryid,
sum(stock) as totalstock
from fooditems
group by categoryid;

select 
categoryid,
count(*) as totalitems
from fooditems
group by categoryid
having count(*) > 2;

select 
categoryid,
avg(price) as averageprice
from fooditems
group by categoryid
having avg(price) > 100;
