use MYBD
select EName,MAX(ESal) as MaxSal from Emp
select EName,MIN(ESal) as MinSal from Emp
select AVG(ESal) as AvgSal from Emp
select MAX(HireDate) as HighExperience from Emp
select * from Emp
--select  HireDate,count(*) as Total from Emp where DATEPART(DW,HireDate)=1
select * from FirstStudent
--select SAddress,sum(TutionFee) as Total from FirstStudent