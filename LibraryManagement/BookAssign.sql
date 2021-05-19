use MYBD
create table BookAssign
(
StudentId int not null  references Student(StudentId),
BookId int Not null references Book(BookId),
StudentName varchar(50),
BookName varchar(50),
AssignDate date default(getdate()),
constraint PK_BookAssign_StudentBookId primary key(StudentId,BookId)
);
 
insert into BookAssign(StudentId,BookId) values(1,100,'Arjun','TwoSates')
insert into BookAssign(StudentId,BookId) values(2,101)
insert into BookAssign(StudentId,BookId) values(2,100)


select * from Book
select * from Student
select * from BookAssign
exec USP_BookAssign_Insert 1,101
 
---drop procedure  USP_BookAssign_Insert
 

create procedure USP_BookAssign_Insert
@StudentId int,
@BookId int
as 
begin
 declare @count int
 select @count=BookCount from Book where BookId=@BookId
 if @count>0
 insert into BookAssign(StudentId,BookId) values(@StudentId,@BookId)
 else
 print 'the book count is zero,No insert operation'
 --Currently the book is not available
end

select * from Book
--drop trigger TR_Book_BookCount
create trigger TR_BookAssign_Update_StudentBookName on BookAssign
after insert
as
begin
 declare @BookName varchar(50),@StudentName varchar(50),@BookId int,@StudentId int
 select @BookId=BookId from inserted
 select @StudentId=StudentId from inserted
 select @BookName=BookName from Book where BookId=@BookId
 select @StudentName=StudentName from Student where StudentId=@StudentId
 update BookAssign set StudentName=@StudentName,BookName=@BookName where StudentId=@StudentId and BookId=@BookId
 --insert into BookAssign(StudentName,BookName) values(@StudentName,@BookName)
end


create trigger TR_Book_Update_BookCount on BookAssign
after insert
as
begin
 declare @Count int,@BookId int
 select @BookId=BookId from inserted
 select @Count=BookCount from  Book where BookId=@BookId
 update Book set BookCount=@Count-1 where BookId=@BookId
end

create function FN_BookAssign_BookAssignDetails() returns table
as
return(select * from BookAssign)

 


select * from Book
select * from Student
select * from BookAssign
select * from LibraryHistory

exec USP_BookAssign_Insert 1,1
exec USP_BookAssign_Insert 2,1
exec USP_BookAssign_Insert 3,1
exec USP_BookAssign_Insert 3,2
exec USP_BookAssign_Insert 4,2




--use MYBD
--create table BookAssign
--(
--StudentId int not null  references Student(StudentId),
--BookId int Not null references Book(BookId),
--StudentName varchar(50),
--BookName varchar(50),
--AssignDate date default(getdate()),
--constraint PK_BookAssign_StudentBookId primary key(StudentId,BookId)
--);
 

--insert into BookAssign(StudentId,BookId) values(1,100,'Arjun','TwoSates')
--insert into BookAssign(StudentId,BookId) values(2,101)
--insert into BookAssign(StudentId,BookId) values(2,100)


--select * from Book
--select * from Student
--select * from BookAssign
--exec USP_BookAssign_Insert 1,101
 
--drop procedure  USP_BookAssign_Insert
 

--create procedure USP_BookAssign_Insert
--@StudentId int,
--@BookId int
--as 
--begin
-- declare @count int
-- select @count=BookCount from Book where BookId=@BookId
-- if @count>0
-- insert into BookAssign(StudentId,BookId) values(@StudentId,@BookId)
-- else
-- print 'the book count is zero,No insert operation'
--end

--select * from Book
----drop trigger TR_Book_BookCount
--create trigger TR_BookAssign_Update_StudentBookName on BookAssign
--after insert
--as
--begin
-- declare @BookName varchar(50),@StudentName varchar(50),@BookId int,@StudentId int
-- select @BookId=BookId from inserted
-- select @StudentId=StudentId from inserted
-- select @BookName=BookName from Book where BookId=@BookId
-- select @StudentName=StudentName from Student where StudentId=@StudentId
-- update BookAssign set StudentName=@StudentName,BookName=@BookName where StudentId=@StudentId and BookId=@BookId
-- --insert into BookAssign(StudentName,BookName) values(@StudentName,@BookName)
--end


--create trigger TR_Book_Update_BookCount on BookAssign
--after insert
--as
--begin
-- declare @Count int,@BookId int
-- select @BookId=BookId from inserted
-- select @Count=BookCount from  Book where BookId=@BookId
-- update Book set BookCount=@Count-1 where BookId=@BookId
--end

--select * from Book
--select * from Student
--select * from BookAssign

--exec USP_BookAssign_Insert 1,101
--exec USP_BookAssign_Insert 1,104




