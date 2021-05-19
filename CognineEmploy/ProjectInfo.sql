use MYBD
create table ProjectInfo
(
ProjectId int primary key,
ProjectName varchar(100) null unique,
BranchId int references BranchInfo(BranchId)
);
select * from ProjectInfo
select * from BranchInfo
insert into ProjectInfo values(1,'meeseva',3)
insert into ProjectInfo values(2,'rtcbus',3)

update ProjectInfo set ProjectName='MeeSeva' where ProjectId=1
update ProjectInfo set ProjectName='RtcBus' where ProjectId=2

---insert into ProjectInfo values(2,null,2)
insert into ProjectInfo values
(3,'Visa',1),(4,'Bhim',2),(5,'MumbaiMetro',4),(6,'library',null)
select * from ProjectInfo



select * from ProjectInfo
select * from EmployInfo

select *
from EmployInfo  left outer join ProjectInfo  
on EmployInfo.ProjectId=ProjectInfo.ProjectId
