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

create procedure USP_EmployInfo_ESal
@EId int,
@Amt money,
@EName varchar(20)
as
begin
 update EmployInfo set ESal=ESal+@Amt where EId=@EId
end
exec USP_EmployInfo_ESal 112,1231,'aa'

---output parameter---
create procedure USP_EmployInfo_ESal_Out
@EId int,
@Amt money,
@ESal money out
as
begin
 update EmployInfo set ESal=ESal+@Amt where EId=@EId
 select @ESal=ESal from EmployInfo where EId=@EId
end

declare @out money
select ESal from EmployInfo where EId=112 
exec USP_EmployInfo_ESal_Out 112,1231,@out output
print 'updated salary :'+cast(@out as varchar)

select ESal from EmployInfo where EId=112 
declare @out money
exec USP_EmployInfo_ESal_Out @EId=112,@Amt=1231,@ESal=@out output
print 'updated salary :'+cast(@out as varchar)

select * into EmployInfoY from EmployInfo
select* from EmployInfo
select* from EmployInfoY



