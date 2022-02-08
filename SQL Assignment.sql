create database sharath;

use sharath;

create table salespeople(snum INT primary key, sname varchar(20) unique, city varchar(20), comm INT);

insert into salespeople(snum,sname,city,comm) 
values(1001,"Peel","London",12),
(1002,"Serres","Sanjose",13),
(1004,"Motika","London",11),
(1007,"Rifkin","Barcelona",15),
(1003,"Axelrod",Newyork",10);


create table customers(cnum INT primary key,cname varchar(20), city varchar(20) not null, snum int,foreign key(snum) references salespeople(snum));

insert into customers values
(2001,"Hoffman","London",1001),
(2002,"Giovanni","Rome",1003),
(2003,"Liu","Sanjose",1002),
(2004,"Grass","Berlin",1002),
(2006,"Clemens","London",1001),
(2008,"Cisneros","Sanjose",1007),
(2007,"Pereira","Rome",1004);



create table orders
(onum int primary key,Amt int,Odate date,cnum int,snum int,foreign key(cnum) references customers(cnum), foreign key(snum) references salespeople(snum));

insert into orders values
(3001,18.69,"1990-10-03",2008,1007),
(3003,767.19,"1990-10-03",2001,1001),
(3002,1900.10,"1990-10-03",2007,1004),
(3005,5160.45,"1990-10-03",2003,1002),
(3006,1098.16,"1990-10-03",2008,1007),
(3009,1713.23,"1990-10-04",2002,1003),
(3007,75.75,"1990-10-04",2004,1002),
(3008,4273.00,"1990-10-05",2006,1001),
(3010,1309.95,"1990-10-06",2004,1002),

(3011,9891.88,"1990-10-06",2006,1001);


 Count the number of Salesperson whose name begin with ‘a’/’A’.

 select count(*)  from salespeople where sname like "a%" and sname like "A%";


 Display all the Salesperson whose all orders worth is more than Rs. 2000.
 select * from orders where amt>2000;

  Count the number of Salesperson belonging to Newyork
  select count(*) from salespeople where city="newyork";


Display the number of Salespeople belonging to London and belonging to Paris.
  select * from salespeople where city="London" and city="paris";

--Display the number of orders taken by each Salesperson and their date of orders.

select snum,count(*),odate from orders group by snum,odate;