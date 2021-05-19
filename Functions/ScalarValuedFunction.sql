create function FN_Emp_GetName() returns varchar(500)
as 
begin
 declare c1 cursor for select EName from Emp
 declare @EName varchar(50)
 declare @TotalEName varchar(500)
 set @TotalEName=' '
 open c1
 fetch  next  from c1 into @EName
 while(@@FETCH_STATUS=0)
  begin
  set @TotalEName=@TotalEName+@EName+','
  fetch next from c1 into  @EName
  end
 close c1
 deallocate c1
 return left(@TotalEName,len(@TotalEName)-1)
end


drop function FN_Emp_GetName
select user_name()
select dbo.FN_Emp_GetName(5) 

select *from Emp
--drop function FN_Emp_GetName
