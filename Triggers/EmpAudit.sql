-- predefined function for user name
print user_name()
Create table EmpAudit
(
UName varchar(50),
Operation varchar(10) check(Operation in('insert','update','delete')),
NewEId int,
NewEName varchar(50),
NewSal money,
OldEId int, 
OldEName varchar(50),
OldSal money
);
--drop table EmpAudit
--select  * from Emp
--drop trigger  TR_EmpAudit

create trigger TR_EmpAudit on  Emp
after insert,update,delete
as 
begin
declare @NewEId int,@NewEName varchar(50),@NewSal money
declare @OldEId int ,@OldEName varchar(50),@OldSal money
declare @UName varchar(50) ,@Operation varchar(10),@CntInsert int,@CntDelete int
select @NewEId=EId,@NewEName=EName,@NewSal=ESal from inserted
select @OldEId=EId,@OldEName=EName,@OldSal=ESal from deleted
select @CntInsert=COUNT(*) from inserted
select @CntDelete=COUNT(*) from deleted
if @CntInsert=1  and @CntDelete=0
 begin
 set @Operation='insert'
 end
else if @CntInsert=0  and @CntDelete=1
 begin
 set @Operation='delete'
 end
if @CntInsert=1  and @CntDelete=1
 begin
 set @Operation='update'
 end
set @UName=user_name()
 insert into EmpAudit values(@UName,@Operation,@NewEId ,@NewEName,@NewSal,@OldEId,@OldEName,@OldSal)
end

select * from Emp
select * from  EmpAudit
select * from inserted
select  * from deleted
insert into Emp (EId,EName,Job,ESal,HireDate,JoinYear)values(8,'Vibishan','hr',20000,getdate(),DATEPART(YYYY,getdate()))
update Emp
set GMail='VALIclerk@cognine.com' where EName='vali'
update Emp
set GMail='sugreevclerk@cognine.com' where EName='sugreev'

