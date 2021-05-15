use MYBD
create procedure USP_UpdateSalary
@Amt money,
@EId int
as 
update Emp set ESal=ESal+@Amt where EId=@EId
---passing values to parameters with positional notation---
execute USP_UpdateSalary 1000,1
--execute USP_UpdateSalary select @Amt=ESal from Emp where EId=@EId,set @EId=2
--select @Amt=ESal from Emp where EId=@EId
--set @EId=2

---passing values to parameters with named notation---
execute USP_UpdateSalary @Amt=1200,@EId=1

---with output parameter---
create procedure USP_EmpUpdatingSalary
@EId int,
@Amt money,
@NewSal money output
as
update Emp set ESal=ESal+@Amt where EId=@EId
select @NewSal=ESal from Emp where EId=@EId

execute USP_EmpUpdatingSalary @EId=1,@Amt=111,@NewSal=5 

declare @s money
execute USP_EmpUpdatingSalary 1,111,@s output 
print @s
print 'value is '+cast(@s as varchar)
select * from Emp