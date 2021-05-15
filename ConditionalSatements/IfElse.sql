	declare @EId int,@ESal money,@Amt money
	set @EId=2
	set @Amt=10000
	begin transaction
	 update Emp set ESal=ESal+@Amt where EId=@EId
	 select  @ESal=ESal from Emp where EId=@EId
	 if(@ESal>50000)
	  begin
	   rollback
	   end
	 else
	  begin
	   commit
	  end

	 declare @Job varchar(40),@ESal money,@Percentage float,@Eid int
	 set @Eid=3
	 if @Job='Manager'
	  begin
	  set @Percentage=0.20
	  end
	else if @Job='clek'
	 begin
	 set @Percentage=0.15
	 end
   else if @Job='salesExicutive'
	 begin
	 set @Percentage=0.10
	 end
   else
   begin
   set @Percentage=0.5
   end
   update Emp set ESal=ESal+(ESal*@Percentage) where EId=@Eid


	select * from Emp
	select * from EmpR
   
	  update Emp set ESal=ESal+ESal*0.2 where Job='manager'




	  update Emp
	set ESal=case Job
			 when 'Manager' then ESal+(ESal*0.2)
			 when 'clerk' then ESal+(ESal*0.10)
			 when 'SalesExicutive' then ESal+(ESal*0.15)
			 when 'hr' then ESal+(ESal*0.10)
			 else ESal+(ESal*0.5)
			 end




	select * from Emp
	select * from EmployInfo
