use MYBD
create table EmployInfo
(
EId         int          primary key identity(100,1),
EName       varchar(50)  not null,
ESal        money        check(ESal>10000),
EMailId     varchar(50)  unique not null check(EMailId like '%@gmail.com'),
Branch      int          references BranchInfo(BranchId),
ProjectId   int          references ProjectInfo(ProjectId),
ProjectName varchar(100) references ProjectInfo(ProjectName)
);

insert into EmployInfo values('nakul',40000,'nakul.cognine@gmail.com',2,null,null,'12-12-2020')
insert into EmployInfo values('krishna',50000,'krishna.cognine@gmail.com',2,4,'Bhim')
insert into EmployInfo values('arjun',45000,'arjun.cognine@gmail.com',3,2,'visa')
insert into EmployInfo values('darmaraj',40000,'darmaraj.cognine@gmail.com',1,3,'visa')
insert into EmployInfo values('durydan',40000,'duryodan.cognine@gmail.com',4,5,'MumbaiMetro')
--insert into EmployInfo values('karna',35000,'karna.cognine@gmail.com',6,6,'Library')
insert into EmployInfo values(110,'karnaa',35000,'karnaa.cognine@gmail.com',3,6,'RtcBus')
insert into EmployInfo values(111,'karnaa',350222,'karnaa.cognine@gmail.com',6,1,'RtcBus')

alter table EmployInfo add HireDate date default getdate()

update EmployInfo set HireDate=ISNULL(HireDate,GETDATE())

update EmployInfo set HireDate='23-01-2017' where EId=102
update EmployInfo set ESal=52000 where EId=106

select * from BranchInfo
select * from EmployInfo
select * from ProjectInfo

--[PK__EmployIn__C190176BB1122F13]
--[UQ__EmployIn__41EFDDB09DFFC6E7]
--CK__EmployInf__EMail__57DD0BE4, CK__EmployInfo__ESal__56E8E7ABDF__EmployInf__HireD__5BAD9CC8
alter table EmployInfo drop constraint PK__EmployIn__C190176BB1122F13
alter table EmployInfo add constraint PK_EmployInfo_EId primary key(EId)