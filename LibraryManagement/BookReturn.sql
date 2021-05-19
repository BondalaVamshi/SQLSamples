use MYBD

create procedure USP_BookAssign_BookReturn
@StudentId int,
@BookId int
as 
begin
declare @InitialBookCount int,@BookCount int
select @InitialBookCount=InitialBookCount from Book where BookId=@BookId
select @BookCount=BookCount from Book where BookId=@BookId
begin try
if(@InitialBookCount>@BookCount)
begin
delete from BookAssign where StudentId=@StudentId and BookId=@BookId
update Book set BookCount=BookCount+1 where BookId=@BookId
end
else
begin
raiserror('No Books to return',15,1)
end
end try
begin catch
 print ERROR_MESSAGE()
end catch
end 
exec USP_BookAssign_BookReturn 1,1
exec USP_BookAssign_BookReturn 2,1

select * from Book
select * from Student
select * from BookAssign
exec USP_BookAssign_BookReturn 1,1
--use MYBD
--create procedure USP_BookAssign_BookReturn
--@StudentId int,
--@BookId int
--as 
--begin
--delete from BookAssign where StudentId=@StudentId and BookId=@BookId
--update Book set BookCount=BookCount+1 where BookId=@BookId
--end 

--exec USP_BookAssign_BookReturn 1,100
--exec USP_BookAssign_BookReturn 1,104



--select * from Book
--select * from Student
--select * from BookAssign