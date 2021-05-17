use MYBD
select * from EmpY
select * from Emp
select * from EmpSP
select * from EmpR

create table EmpSP
(
EmpId int primary key,
EName varchar(50) not null,
ESal money check(ESal>=10000)
);

create procedure USP_EmpSP_insert
@EmpId int,
@EName varchar,
@ESal money
as
begin
insert into EmpSP values(@EmpId,@EName,@ESal)
End

exec USP_EmpSP_insert 2,'Almatti',12000
select * from EmpSP
















create procedure USP_InsertEmpSP
@EmpId int,
@EName varchar(40),
@ESal money,
@Msg varchar(100) output
as
begin try
 insert into EmpSP values(@EmpId,@EName,@ESal)
 set @Msg='record inserted successfully'
end try
begin catch
set @Msg=ERROR_MESSAGE()
end catch


declare @S varchar(100)
execute USP_InsertEmpSP 1,'albert',50000,@S output
print @S

--declare @S varchar(100)
--execute USP_InsertEmpSP 1,'albert',50000,@S output
--print @S
