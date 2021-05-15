use MYBD
---creating index
create index I1 on Car(Company)

select * from Car
---Drop index
drop index I1 on Car

---non clustered index
create index IX_Car on Car(Company)

select * from Car where CarModel='TIaGo'
select * from Car where Company='TATA'
select * from Car where Company<>'TATA'
select * from Car where Company='ZEEP'
select * from Car where Company<>'ZEEP'
--unique index
Create unique index UX1_Car on Car(CarPrice)
select * from Car where CarPrice>10000

create unique index UX_EmployInfo_ESal on EmployInfo(ESal)
delete from EmployInfo where ESal=40000
---if we want create a unique index we need to convert that 
--column as unique i.e., no duplicates
select * from EmployInfo
insert into EmployInfo values('gandari',40000,'gandari.cognine@gmail.com',3,null,null,'12-12-2020')
---insert into EmployInfo values('droupathi',40000,'droupathi.cognine@gmail.com',3,null,null,'12-12-2020')
--duplicates not allowed