select * from Emp
select * from EmployInfo
--creating Trigger---
use  MYBD
create trigger TR_Emp_UpdateOnSaturday on Emp
after update
as
begin
 --if DATEPART(DW,GETDATE())=19
 if datename(DW,GETDATE())='saturday'
 begin
 rollback
 raiserror('saturday updates are not allowed',17,1)
 end
end
--testing---
update Emp set  ESal=ESal+1 where EId=1
---Dropping Trigger---
drop trigger TR_Emp_UpdateOnSaturday


---Bank Timings---
create trigger TR_Emp_BankTimings on Emp
after insert,update,delete
as
begin
 if (DATEPART(DW,getdate()) between 2 and 6)and (DATEPART(HH,getdate()) not between 10 and 16)
 begin
 rollback
 raiserror('only between 10 to 4pm',15,1)
 end
 else if (DATEPART(DW,getdate())=7)and (DATEPART(HH,getdate()) not between 10 and 14)
 begin
 rollback
 raiserror('only between 10 to 2pm',15,1)
 end
 else if(DATENAME(DW,getdate())='sunday')
 begin
 rollback
 raiserror('sundays not allowed',15,1)
 end
end

update Emp set  ESal=ESal+1 where EId=1
