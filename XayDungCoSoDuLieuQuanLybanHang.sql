create table Customer (
cId INT not null auto_increment,
cName varchar(50) not null,
cAge INT not null,
primary key (cId)
);

create table Orders (
oId int not null auto_increment,
cId INT not null,
oDate datetime not null,
oTotalPrice Int not null,
primary key (oid),
foreign key (cID) references Customer(cid)
);

create table OrderDetail (
oId int not null,
pId INT not null,
odQty int not null,
primary key (oid,pId),
foreign key (oID) references Orders(oid)
);

ALTER TABLE OrderDetail
ADD INDEX (pId);

create table Product (
pId INT not null,
pName varchar(50),
pPrice int,
primary key (pId),
foreign key (pId) references OrderDetail(pId)
);