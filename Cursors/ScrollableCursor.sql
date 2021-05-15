declare cursor_Emp_EName cursor scroll for select EName from Emp
declare @EName varchar(40)
open cursor_Emp_EName 
fetch first from cursor_Emp_EName into @EName
print 'First :'+@EName
fetch next from cursor_Emp_EName into @EName
print 'Next :'+@EName
fetch absolute 4 from cursor_Emp_EName into @EName
print 'absolute 4 :'+@EName
fetch relative 4 from cursor_Emp_EName into @EName
print 'Relative 4'+@EName
fetch last from cursor_Emp_EName into @EName
print 'Last :'+@EName
fetch Prior from cursor_Emp_EName into @EName
print 'Prior/Prvious :'+@EName
close cursor_Emp_EName 
deallocate cursor_Emp_EName 

declare cursor_Emp_EName cursor scroll for
select EName from Emp
declare @EName varchar(40)
open cursor_Emp_EName 
fetch  last from cursor_Emp_EName  into @EName
while(@@FETCH_STATUS=0)
 begin
 print @EName
 fetch  prior from cursor_Emp_EName  into @EName
 end
close  cursor_Emp_EName 
deallocate cursor_Emp_EName 




select * from Emp
