select * from Emp
---GetDate---
select GETDATE()
---DatePart---
select DATEPART(MM,GETDATE())
select  DATEPART(MM,HireDate) from Emp
select EName,DATEPART(YYYY,HireDate) as JoinYear from Emp
alter table Emp add JoinYear int
update Emp set JoinYear=DATEPART(YYYY,HireDate) 
select * from Emp where DATEPART(MM,HireDate) in (1,2,6,7)
select  * from Emp where (DATEPART(YYYY,HireDate))%4=0
select * from Emp where JoinYear%4=0
---DateName---
select DATENAME(DW,HireDate) from Emp
---DateAdd---
update Emp set HireDate=DATEADD(DD,19,HireDate)
select dateadd(YYYY,10,JoinYear),EName from Emp
---DateDiff---
select DATEDIFF(MM,'12-11-2020','12-11-2021')
select DATEDIFF(MM,'12-11-2021','12-11-2020')
select DATEDIFF(MM,'12-11-2020',GETDATE()) as Experience
select DATEDIFF(YYYY,(select HireDate from Emp where EId=1),(select HireDate from Emp where EId=3))
