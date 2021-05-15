
	declare @A tinyint,@B tinyint,@C tinyint
	set @A=22
	set @B=122
	set @C=@B/@A
	print @C
	set @C=@A/@B
	print @C

 
	begin try
		declare @A tinyint,@B tinyint,@C tinyint
		set @A=3
		set @B=255
		set @C=@B/@A
		print '@B/@A :'+cast(@C as varchar)
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
	end catch


	create table EmpException
	(
	EId int Primary key,
	EName varchar(30) not null,
	ESal  money check(ESal>3000)
	);
	insert into EmpException values(1,'Adilabad',3001)
	--insert into EmpException values(1,'Adilabad',3500)
	select * from EmpException


	declare @EId int,@EName varchar(30),@ESal money
	begin try
	 set @EId=5
	 set @EName='siricilla'
	 set @ESal=3001
	 insert into EmpException values(@EId,@EName,@ESal)
	end  try
	begin catch
	 if ERROR_NUMBER()=547
	 print 'Employee Sal must be grater than 3000'
	 else if ERROR_NUMBER()=515
	 print 'Employee Name shoul not be null'
	 else if  ERROR_NUMBER()=2627
	 print 'Employee Id sholud not be duplicate/null'
	end catch

