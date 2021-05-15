create View vw_EmployInfo_With_ProjectInfo
as
select EId,EName,ESal,EMailId,ProjectInfo.ProjectName,ProjectInfo.ProjectId 
from EmployInfo Right Outer Join ProjectInfo
on EmployInfo.ProjectId=ProjectInfo.ProjectId

select * from vw_EmployInfo_With_ProjectInfo
---delete from vw_EmployInfo_With_ProjectInfo where ESal=10000

create view vw_Emp_JobTotalSal
as
select Job,SUM(ESal) as Total from Emp
where job in('clek','manager')
group by Job having SUM(ESal)>=10000

---delete from vw_Emp_JobTotalSal where ESal<10000
drop view vw_Emp_JobTotalSal

create view vw_EmpY
as
select * from EmpY

select * from vw_EmpY
drop table EmpY

create view vw_EmpY_Select
with schemabinding
as
select * from uservamshi.EmployInfo