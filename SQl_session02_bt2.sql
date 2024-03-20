create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer(
cID int primary key auto_increment,
cName varchar(50) not null,
cAge int
);
create table Orders(
oID int primary key auto_increment,
cID int,
foreign key(cID)references Customer(cID),
oDate date,
oTotalPrice double
);
create table OrderDetail(
oID int,
foreign key(oID) references Orders(oID),
pID int,
foreign key(pID) references Product(pID),
odQTY int,
primary key(oID,pID)
);
create table Product(
pID int primary key auto_increment,
PName varchar(100) not null,
pPrice double
);
insert into Customer(cName,cAge) values
('Minh Quan',10),
('Ngoc Oanh',20),
('Hong Ha',50);
insert into orders(oID,cID,oDate,oTotalPrice) values
(1,1,'2006-3-21',null),
(2,2,'2006-3-23',null),
(3,1,'2006-3-16',null);
insert into Product(pName,pPrice) values
('Máy giặt',3),
('Tủ lạnh',3),
('Điều hòa',7),
('Quạt',1),
('Bếp điện',2);
insert into OrderDetail(oID,pID,odQTY) value(1,3,1)
