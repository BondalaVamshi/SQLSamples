use MYBD

create  table BranchInfo
(
BranchId int Primary Key,
BranchLocation varchar(50) not null unique
);

insert into BranchInfo values
(1,'newyork'),
(2,'delhi'),
(3,'hyderabad'),
(4,'mumbai'),
(5,'banglure')