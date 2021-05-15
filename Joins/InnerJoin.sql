use MYBD
select * from EmployInfo
select * from ProjectInfo
select *from EmployInfo ,ProjectInfo where EmployInfo.ProjectId=ProjectInfo.ProjectId

---With aliase--
select E.EId,E.EName,E.ESal,E.EMailId,E.ProjectId,P.ProjectName,P.ProjectId 
from EmployInfo as E,ProjectInfo as P
where E.ProjectId=P.ProjectId
---Without Aliase---
select EId,EName,ESal,EMailId,EmployInfo.ProjectId,ProjectInfo.ProjectName,ProjectInfo.ProjectId 
from EmployInfo ,ProjectInfo
where EmployInfo.ProjectId=ProjectInfo.ProjectId

--where EmployInfo.ProjectId=ProjectInfo.ProjectId
--select EId,EName,ESal,EMailId,ProjectId,ProjectName,ProjectId 
--from EmployInfo ,ProjectInfo

---Ansi Style---
select E.EId,E.EName,E.ESal,E.EMailId,E.ProjectId,P.ProjectName,P.ProjectId 
from EmployInfo as E inner Join ProjectInfo as P
on E.ProjectId=P.ProjectId

select EId,EName,ESal,EMailId,EmployInfo.ProjectId,ProjectInfo.ProjectName,ProjectInfo.ProjectId 
from EmployInfo inner Join ProjectInfo
on EmployInfo.ProjectId=ProjectInfo.ProjectId

---Joing Multiple Tables---
select EId,EName,P.ProjectId,CustomerName
from EmployInfo as E,ProjectInfo as P,Customer as C
where E.ProjectId = P.ProjectId
      and
	  P.ProjectId=C.projectId

select EId,EName,P.ProjectId--,CustomerName
from EmployInfo as E inner join ProjectInfo as P 
on E.ProjectId = P.ProjectId
      join Customer as C
on P.ProjectId=C.projectId

