use MYBD
select * from Emp
select EName,ESal from Emp
declare cursor_Emp_ENameESal cursor for
select EName,ESal from Emp
declare @EName varchar(40),@ESal money
open cursor_Emp_ENameESal 
fetch  next from cursor_Emp_ENameESal  into @EName,@ESal
while(@@FETCH_STATUS=0)
 begin
 print @EName+' '+cast(isnull(@ESal,0) as varchar)
 fetch  next from cursor_Emp_ENameESal  into @EName,@ESal
 end
close  cursor_Emp_ENameESal 
deallocate cursor_Emp_ENameESal 


declare cursor_Emp_ENameESal cursor for select EName,ESal from Emp
declare @EName varchar(40),@ESal money,@TSal money
set @TSal=0
open cursor_Emp_ENameESal 
fetch  next from cursor_Emp_ENameESal  into @EName,@ESal
while(@@FETCH_STATUS=0)
 begin
 print @EName+' '+cast(isnull(@ESal,0) as varchar)
 set @TSal=isnull(@TSal,0)+isnull(@ESal,0)
 fetch  next from cursor_Emp_ENameESal  into @EName,@ESal
 end
 print 'Total Sal is '+cast(@TSal as varchar)
close  cursor_Emp_ENameESal 
deallocate cursor_Emp_ENameESal 


declare cursor_Emp_ENameESal cursor for
select EName,ESal from Emp
declare @EName varchar(40),@ESal money,@TotalEName varchar(550),@TotalESal money
set @TotalEName=''
set @TotalESal=0
open cursor_Emp_ENameESal 
fetch  next from cursor_Emp_ENameESal  into @EName,@ESal
while(@@FETCH_STATUS=0)
 begin
 print @EName+' '+cast(isnull(@ESal,0) as varchar)
 set  @TotalEName=@TotalEName+@EName+','
 set  @TotalESal=isnull(@TotalESal,0)+isnull(@ESal,0)
 fetch  next from cursor_Emp_ENameESal  into @EName,@ESal
 end
 print 'Total ESal is '+cast(@TotalESal as varchar)
 print 'ENames are '+substring(@TotalEName,0,len(@TotalEName))
 print 'ENames are '+left(@TotalEName,len(@TotalEName)-1)
close  cursor_Emp_ENameESal 
deallocate cursor_Emp_ENameESal 

declare cursor_Emp_ENameESal cursor for select EName from Emp
declare @EName varchar(40)
set @EName=''
open cursor_Emp_ENameESal 
fetch  next from cursor_Emp_ENameESal  into @EName
while(@@FETCH_STATUS=0)
 begin
 print @EName
 fetch  next from cursor_Emp_ENameESal  into @EName
 end
close  cursor_Emp_ENameESal 
deallocate cursor_Emp_ENameESal 



