use MYBD
create trigger TR_EmployInfo_NotDecrSal on EmployInfo 
after update 
as
begin 
 declare @NewSal money,@OldSal money
 select @NewSal=ESal from inserted
 select @OldSal=ESal from deleted
 if(@OldSal>@NewSal)
 begin
 rollback
 raiserror('Salary decrement not allowed',15,1)
 end
end

drop trigger  TR_EmployInfo_NotDecrSal 
 
update EmployInfo
set ESal=ESal-1 where EId=100


select * from EmployInfo
select * from EmployInfoResign
select * from EmployInfoY
truncate table EmployInfoY
SP_Rename 'EmployInfoY','EmployInfoResign'

create trigger TR_EmployInfoResign on EmployInfo
after delete
as
begin
 declare @EId varchar(30),@EName varchar(30),@ESal  money,@EMailId varchar(60),@Branch int,@ProjectId int,@ProjectName varchar(60),@HireDate date
 select  @EId=EId,@EName=EName,@ESal=ESal,@EMailId=EMailId,
         @Branch=Branch,@ProjectId=ProjectId,@ProjectName=ProjectName,@HireDate=HireDate from EmployInfo
  insert into  EmployInfoResign values(@EName,@ESal,@EMailId,@Branch,@ProjectId,@ProjectName,@HireDate)
end
drop trigger TR_EmployInfoResign

delete from EmployInfo where EId=106
select * from EmployInfoResign
