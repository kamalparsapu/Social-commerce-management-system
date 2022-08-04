create table  user_profile (
userid numeric (25) primary key ,
email  varchar (50) ,
phone numeric (10) ,
first_name  varchar(50) ,
middle_name  varchar(50) ,
last_name varchar(50) ,
gender  varchar (12),
DOB  datetime ,
location int ,
about varchar (200) ,
user_Pic  int ,
followers     int ,
following_    int 

);  








create table users (
userid numeric(25),
foreign key(userid) references user_profile(userid),
email varchar (50) ,
password_  Numeric(16) ,
user_pic  int 

);







create  table category (
userid numeric(25),
foreign key(userid) references user_profile(userid),
categoryid int ,
category_name   varchar(50) ,
description_ varchar(100)


);

 
 
 
 
 
 
 
 
 
 create table seller (
 sellerid int primary key ,
 name_ varchar (50),
 UIN int , 
 phone numeric (10),
 email varchar (50),
 total_sales  float 
 
 
 );
 
 
 
 
 
 
 
 
 -- normalizatio. used below 
 -- in  product table 
 create table product (
  userid numeric(25),
foreign key(userid) references user_profile(userid),
product_name varchar(50),
sellerid int ,
foreign key (sellerid) references seller(sellerid),
MRP float , 
brands varchar (50),
stocks int 
 
 
 );
 

 
 
 
 
 
 
 
  create table cart (
   userid numeric(25),
foreign key(userid) references user_profile(userid),
  cartid  int  primary key ,
productid int ,
total_item int ,
grand_total  float 

  );
  

  
  
  
  
  
  
  
  
  
  
 

create table  orders (
   userid numeric(25),
foreign key(userid) references user_profile(userid),
ordernumber  numeric(20),
orderdate    datetime ,
shippingdate  datetime , 
orderamount  float ,             
 
cartid  int ,
foreign key (cartid) references cart (cartid),
order_status  varchar(100)

  );
  
  
 
 
 
 
 
 
  
  create table order_item (
   userid numeric(25),
foreign key(userid) references user_profile(userid),
productid  numeric (20),
quantity int , 
MRP float 
  
  );
  

 
 
 
 
 
 
 
 create table payment(
 
 userid numeric(25),
foreign key(userid) references user_profile(userid),
orderid numeric(25),
paymentmode varchar(20),
date_of_payment  datetime 
 
 );
 

 
 
 
 
 create table post(
  userid numeric(25),
foreign key(userid) references user_profile(userid),
texts varchar(200),
post varbinary(25),
comments varchar(200),
author varchar(25),
deletes varchar(200)
 
 );
 
 
 
 
 create table reviews(
  userid numeric(25),
foreign key(userid) references user_profile(userid),
texts varchar(200),
post varbinary(25),
comments varchar(200),
author varchar(25),
deletes varchar(200)
 
 );
 

 
 
 
 
 create table message(
   userid numeric(25),
foreign key(userid) references user_profile(userid),
  contexts varchar(100),
  dateposted datetime,
  conversation varchar(2000),
  sender varchar(3000),
  report varchar(1000),
  blocck varchar(10)
  );
  

  
  
  
  
  create table conversation (
  
    userid numeric(25),
foreign key(userid) references user_profile(userid),
 last_comment varchar (100) ,
 last_date_posted  datetime ,
  report varchar (100) ,
  participants int not null 
  
 
  );
  
 