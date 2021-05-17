create function FN_Emp_EmpList(@HireDate int) returns table
as
return(select * from Emp where DATEPART(YYYY,HireDate)=@HireDate)

select * from dbo.FN_Emp_EmpList(2019)

---selecting top  rank  employees
create function FN_Emp_TopEmp(@ int)  returns table
as
return(
select * from (select EName,EId,Job,HireDate,GMail,
              DENSE_RANK() over(order by ESal desc) as Rnk from Emp) as E
			  where Rnk<5 
)

select * from FN_Emp_TopEmp(1)
