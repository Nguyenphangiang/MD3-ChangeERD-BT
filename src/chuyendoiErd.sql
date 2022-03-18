create database ChangeErd;
use ChangeErd;
create table manufacture(
    manufactureID int primary key ,
    manufactureName varchar(50),
    manufactureAddress varchar(100)
);
create table manufacturePhone(
    manufactureID int,
    manufacturePhone varchar(10),
    primary key (manufactureID,manufacturePhone),
    foreign key (manufactureID) references manufacture(manufactureID)
);
create table theOrder(
    theOrderID int primary key ,
    theOrderDate datetime,
    manufactureID int,
    foreign key (manufactureID) references manufacture(manufactureID)
);
create table supplies(
    suppliesID int primary key ,
    suppliesName varchar(50)
);
create table orderDetail(
    oderDetailID int primary key ,
    theOrderID int,
    suppliesID int,
    foreign key (theOrderID) references theOrder (theOrderID),
    foreign key (suppliesID) references supplies(suppliesID)
);
create table receipt(
    receiptID int primary key ,
    receiptDate datetime
);
create table receiptDetail(
    suppliesID int,
    receiptID int,
    unitPrice float,
    quantity int,
    primary key (suppliesID,receiptID),
    foreign key (suppliesID) references supplies(suppliesID),
    foreign key (receiptID) references receipt(receiptID)
);
create table bill (
    billID int primary key ,
    billDate datetime
);
create table billDetail(
    suppliesID int,
    billID int,
    unitPrice float,
    quantity int,
    primary key (suppliesID,billID),
    foreign key (suppliesID) references supplies(suppliesID),
    foreign key (billID) references bill(billID)
);






