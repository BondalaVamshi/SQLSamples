use MYBD
create table CustRegistration
(
CustomerId int,
ProjectId int,
RegisterDate date default(getdate()),
Amount money
primary key(CustomerId,ProjectId)
check(Amount>10000)
--foreign key(BranchId,ProjectId) references ProjectInfo(BranchId,ProjectId)
--primary key(RegisterDate)
---unique(ProjectId)
);
select * from CustRegistration
insert into CustRegistration (CustomerId,ProjectId,RegisterDate,Amount) 
values(1,10,'12-10-2021',15000)
insert into CustRegistration (CustomerId,ProjectId,RegisterDate,Amount) 
values(2,11,'10-02-2020',18000),(2,12,'01-02-2020',12000)
--insert into CustRegistration  
--values(3,14,'10-02-2020',18000),(3,14,'01-02-2020',12000)

insert into CustRegistration  
values(3,14,'10-02-2020',18000),(3,15,'01-02-2020',12000)

--insert into CustRegistration  
--values(null,16,'10-02-2015',11000),(4,null,'01-02-2021',16000)

create table CustSummary
(
CustomerId int,
ProjectName varchar(100),
ProjectId int,
DateOfSubmission date default(getdate()),
TotalAmount money,
RegisterDate date default(getdate())
 constraint CK_CustSummary_ProjectName unique(ProjectName),
-- constraint PK_CustSummary_CustmoerId primary key(CustomerId),
foreign key(CustomerId,ProjectId) references CustRegistration(CustomerId,ProjectId),
 check(DateOfSubmission>RegisterDate ),
 check(TotalAmount>100000)
);

insert into CustSummary
values(1,'MeeSeva',10,'10-02-2021',120000,'02-02-2021')
insert into CustSummary
values(1,'RtcHyd',10,'10-02-2021',120000,'02-02-2021')

insert into CustSummary
values(2,'Ghmc',11,'12-20-2019',150000,null)

values(1,'MeeSeva',2,null,110000,null),
(2,'RtcHyd',3,'02-05-2021',150000,null)
