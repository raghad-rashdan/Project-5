CREATE TABLE Customer
(
customer_ID int identity primary key ,
Image VarChar(255),
Name VarChar(255),
Email VarChar(255),
PhoneNumber Bigint,
City VarChar(255),
Password VarChar(50),
bool BIT NOT NULL DEFAULT 0 ,
);
select* from Customer;





CREATE TABLE Category
(
Category_ID int identity primary key ,
Name VarChar(255),
ImageCategory VarChar(255),

);

CREATE TABLE Product
(
product_ID int identity primary key ,
Name VarChar(255),
Category_ID int,
description VarChar(255),
price Float,
quantity int,
ImageProduct VarChar(255),
newPrice float,
FOREIGN KEY (Category_ID) REFERENCES Category
);
--drop table Orders 
--drop table Product 

--drop table Customer 
--drop table Category 
CREATE TABLE Orders
(
Orders_ID int identity primary key ,
product_ID int,
Category_ID int,
customer_ID int,
FOREIGN KEY (customer_ID) REFERENCES Customer,
FOREIGN KEY (Category_ID) REFERENCES Category,
FOREIGN KEY (product_ID) REFERENCES Product
);

CREATE TABLE Orders_product
(
Orders_product_ID int identity primary key ,
product_ID int,
Orders_ID int,
FOREIGN KEY (product_ID) REFERENCES product,
FOREIGN KEY (Orders_ID) REFERENCES Orders


);
ALTER TABLE Orders
ADD count int;

CREATE TABLE contact
(
Name VarChar(255),
Email VarChar(255),
messagge VarChar(255),
);
CREATE TABLE comment
(
product_ID int,
customer_ID int,
comment VarChar(255),
FOREIGN KEY (product_ID) REFERENCES product,
FOREIGN KEY (customer_ID) REFERENCES Customer
);
select * from comment ;
select * from Product ;

select * from Category ;

Insert into Customer(Name,Image,Email,PhoneNumber,City,Password) values('Raghad','strawberry.jpg','raghad@gmail.com',0777457845,'jordan-irbid','raghad97');
Insert into Customer(Name,Image,Email,PhoneNumber,City,Password) values('Raghad','p.png','raghad@gmail.com',0777457845,'jordan-irbid','raghad97');
Insert into Customer(Name,Email,PhoneNumber,City,Password) values('Raghad','raghad@gmail.com',0777457845,'jordan-irbid','raghad97');

select * from Customer ;
Insert into Category values('Laundry','laundry.png'),('Dish Cleaner','dishImage.png'),('All-purpose Cleaner','allImage.png');
select * from Product ;
Insert into Product values('TIDE',1,'Hygienic Clean Heavy 10x Duty Power PODS',3.5,100,'tide.jpg',0.0),('PERSIL',1,'ProClean + Stain Fighter Liquid Laundry Detergent',4.99,100,'persil.png',0.0),('Ariel Powder Laundry ',1,'Touch of Downy Freshness, 99 loads, 158 oz',3.75,100,'ariel.jpg',0.0);
Insert into Product values('Fairy soap dish',2,'Fairy Liquid Original Green 450ml',4,100,'fairy.jpg',0.0),('Dawn Dish',2,'Non-Scratch Sponges for Dishes, Refreshing',6.99,100,'method.jpg',0.0),('Finish Quantum',2,'Dishwasher Detergent',12.75,100,'finish.jpg',0.0);
Insert into Product values('Simple Green',3,'powerful cleaner designed for effective and environmentally safer use on',4.47,100,'simple.png',0.0),('Purell',3,'Citrus Scent, 28 fl oz Capped Bottle with Spray Trigger in Pack ',1.5,100,'Purell.png',0.0),('fysoul',3,'Disinfectant Wipes',4.75,100,'fysoul.png',0.0);
Insert into Product values('Simple Green',3,'powerful cleaner designed for effective and environmentally safer use on',4.47,100,'simple.png',0.0),('Purell',3,'Citrus Scent, 28 fl oz Capped Bottle with Spray Trigger in Pack ',1.5,100,'Purell.png',0.0),('fysoul',3,'Disinfectant Wipes',4.75,100,'fysoul.png',0.0);
Insert into Product values('Simple Green',3,'powerful cleaner designed for effective and environmentally safer use on',4.47,100,'simple.png',0.0),('Purell',3,'Citrus Scent, 28 fl oz Capped Bottle with Spray Trigger in Pack ',1.5,100,'Purell.png',0.0),('fysoul',3,'Disinfectant Wipes',4.75,100,'fysoul.png',0.0);
Insert into Category values('disCount','.png');
Insert into Product values('palmolive',4,'Palmolive Original Liquid Dish Detergent',17.47,100,'palmolive.jpj',10.0),('gain',4,'Gain Powerblast Dish Spray, Dish Soap, Original Scent Bundle ',15.5,100,'gain.jpg',9.0),('Rejuvenate',4,'Rejuvenate Kitchen & Bathroom Countertop Polish',9.75,100,'fysoul.png',3.0);
