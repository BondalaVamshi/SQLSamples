use MYBD
select  * from Emp
select * from FirstStudent
select SAddress,SUM(TutionFee) as VanFee from  FirstStudent group  by SAddress
select SAddress,SUM(TutionFee) as VanFee from  FirstStudent where SAddress like('k%') group  by SAddress
select JoinYear,COUNT(*) as Total from Emp group By JoinYear
select datepart(YYYY,HireDate),COUNT(*) as CntEmp from Emp group by datepart(YYYY,HireDate)
select DATENAME(DW,HireDate) as WeekName,COUNT(*) as CntEmp from Emp group by DATENAME(DW,HireDate)
select DATENAME(DW,HireDate) as WeekName,COUNT(*) as CntEmp,RANK() over(order by count(*) desc) as rank from Emp group by DATENAME(DW,HireDate)
select JoinYear,sum(ESal) SumSal from Emp where JoinYear in(2019,2018) group by JoinYear
select  * from Emp
select Job,SUM(ESal) as Total from Emp where job in('clek','manager')  group by Job
--select Job,SUM(ESal) as Total from Emp where job in('clek','manager')and SUM(ESal)>10000  group by Job
---Having
select Job,SUM(ESal) as Total from Emp where job in('clek','manager') group by Job having SUM(ESal)>10000


