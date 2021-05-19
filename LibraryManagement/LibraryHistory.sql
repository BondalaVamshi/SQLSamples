use MYBD
create table LibraryHistory
(
UserName varchar(30) default user_name() not null,
StudentId int not null,
StudentName varchar(50),
BookId int not null,
BookName varchar(50),
Operation varchar(30) not null,
TimeDate datetime default getdate()
); 

--drop trigger TR_LibraryHistory_Insert
create trigger TR_LibraryHistory_Insert on BookAssign
after insert,delete
as
begin
declare @Operation varchar(10),@CntInsert int,@CntDelete int
declare @StudentId int,@StudentName varchar(50),@BookId int,@BookName varchar(50)
select @CntInsert=COUNT(*) from inserted
select @CntDelete=COUNT(*) from deleted
if @CntInsert=1  and @CntDelete=0
 begin
 set @Operation='Assigned'
 select @StudentId=StudentId,@BookId=BookId from inserted
 select @StudentName=StudentName from Student where StudentId=@StudentId
 select @BookName=BookName from Book where BookId=@BookId
 end
else if @CntInsert=0  and @CntDelete=1
 begin
 set @Operation='Returned'
 select @StudentId=StudentId,@StudentName=StudentName ,@BookId=BookId,@BookName=BookName from deleted
 end
insert into LibraryHistory(StudentId,StudentName,BookId,BookName,Operation) values(@StudentId,@StudentName,@BookId,@BookName,@Operation)
end

select * from LibraryHistory
create function FN_LibraryHistory() returns table
as
return(select * from LibraryHistory)

--create trigger TR_LibraryHistory_Insert on BookAssign
--after insert,delete
--as
--begin
--declare @Operation varchar(10),@CntInsert int,@CntDelete int
--declare @StudentId int,@StudentName varchar(50),@BookId int,@BookName varchar(50)
--select @CntInsert=COUNT(*) from inserted
--select @CntDelete=COUNT(*) from deleted
--if @CntInsert=1  and @CntDelete=0
-- begin
-- set @Operation='Assigned'
-- select @StudentId=StudentId,@StudentName=StudentName ,@BookId=BookId,@BookName=BookName from inserted
-- end
--else if @CntInsert=0  and @CntDelete=1
-- begin
-- set @Operation='Returned'
-- select @StudentId=StudentId,@StudentName=StudentName ,@BookId=BookId,@BookName=BookName from deleted
-- end
--insert into LibraryHistory(StudentId,StudentName,BookId,BookName,Operation) values(@StudentId,@StudentName,@BookId,@BookName,@Operation)
--end



 insert into LibraryHistory(StudentId,StudentName,BookId,BookName,Operation) values(1,'test',1,'test','test')
 delete from LibraryHistory where BookId=1 and StudentId=1

 --exec TR_Li




