begin try
	declare @A tinyint,@B tinyint,@C tinyint
	set @A=3
	set @B=1
	set @C=@B/@A
	print '@B/@A :'+cast(@C as varchar)
		if @B=1
		raiserror('B should not be 1',15,2);
		-- print 'hello'
	set @C=@A/@B
	print '@A/@B :'+cast(@C as varchar)
end try
begin catch
	if ERROR_NUMBER()=220
	print 'value should be with in 0 to 255'
	else if ERROR_NUMBER()=245
	print 'Enter tinyint value'
	else if ERROR_NUMBER()=8134
	print 'Divisor connot be zero'
	else 
	print  ERROR_MESSAGE()
end catch

select * from Emp
update Emp set ESal=ESal+ESal*0.1 where EId=2

--sunday update sal is not allowed--
--if happen then raiserror--
declare @ESal money,@Amt money,@EId int
begin try
	set @EId=2
	select @ESal= ESal from Emp where EId=@EId
	set @Amt=@ESal+@ESal*0.1
	if DATENAME(dw,getdate())='sunday'
	 raiserror ('sunday updates not allowed',15,1)
    else if DATENAME(dw,getdate())='saturday'
	 raiserror ('saturday updates not allowed',18,2)
	else if datepart(HH,getdate())>12
	 raiserror ('After 12 no updates allowed',18,2)
	else
    update Emp set ESal=@Amt where EId=@EId
end try
begin catch
   print ERROR_MESSAGE()
end catch

SP_ADDMESSAGE 50002,15,'SUNDAY update is not allowes'
SP_ADDMESSAGE 50003,15,'SUNDAY update is not allowes'
--SP_ADDMESSAGE 50003,15,'sunday update is not allowes'
--drop user message--
SP_DROPMESSAGE[50003]
SP_ADDMESSAGE 50003,15,'SATURDAY update is not allowes'
--replace user message--
sp_addmessage 50003,15,'SATURDAY updates is not  allowed',@replace='replace'
---Message Id grater than 50000
--SP_ADDMESSAGE 50000,15,'after 12 update is not allowes'

EXEC sp_addmessage 50005,10,'THis error message is created by Vamshi'
go
RAISERROR (50005, 10, 1)


declare @ESal money,@Amt money,@EId int
begin try
	set @EId=2
	select @ESal= ESal from Emp where EId=@EId
	set @Amt=@ESal+@ESal*0.1
	if DATENAME(dw,getdate())='saturday'
	 raiserror (50003,15,1)
	else if datepart(HH,getdate())>12
	 raiserror ('After 12 no updates allowed',18,2)
	else
    update Emp set ESal=@Amt where EId=@EId
end try
begin catch
   print ERROR_MESSAGE()
end catch

