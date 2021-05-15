---Left Outer Join---
select EId,EName,ESal,EMailId,EmployInfo.ProjectId,ProjectInfo.ProjectName,ProjectInfo.ProjectId 
from EmployInfo left outer Join ProjectInfo
on EmployInfo.ProjectId=ProjectInfo.ProjectId
 ---Right Outer Join---
 select EId,EName,ESal,EMailId,EmployInfo.ProjectId,ProjectInfo.ProjectName,ProjectInfo.ProjectId 
from EmployInfo Right Outer Join ProjectInfo
on EmployInfo.ProjectId=ProjectInfo.ProjectId

--select * from EmployInfo
---Inner Join---
 select EId,EName,ESal,EMailId,EmployInfo.ProjectId,ProjectInfo.ProjectName,ProjectInfo.ProjectId 
from EmployInfo inner Join ProjectInfo
on EmployInfo.ProjectId=ProjectInfo.ProjectId

---Full Outer Join--- 
select EId,EName,ESal,EMailId,EmployInfo.ProjectId,ProjectInfo.ProjectName,ProjectInfo.ProjectId 
from EmployInfo full outer Join ProjectInfo
on EmployInfo.ProjectId=ProjectInfo.ProjectId

select E.EName,E.EName,S.Grade  
from EmployInfo as E ,SalGrade as S
where E.ESal between S.LoSal and S.HiSal

select * from EmployInfo

select * from sal

