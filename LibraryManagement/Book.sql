use MYBD
create table Book
(
BookId int constraint PK_Book_BookId primary key,
BookName varchar(100) constraint UK_Book_BookName unique,
BookCount int not null
);
alter table Book add InitialBookCount int

create procedure USP_Book_Insert
@BookId int,
@BookName varchar(50),
@BookCount int
as
begin
insert into Book values(@BookId,@BookName,@BookCount,@BookCount)
end

select * from Book
exec USP_Book_Insert 1,'ajab',2
exec USP_Book_Insert 2,'gajab',3
exec USP_Book_Insert 3,'kahani',1

---function to see the Books
create function FN_Book_BookDetails() returns table
as
return(select * from Book)

select USER_NAME()

















--use MYBD
--create table Book
--(
--BookId int constraint PK_Book_BookId primary key,
--BookName varchar(100) constraint UK_Book_BookName unique,
--BookCount int not null
--);


--create procedure USP_Book_Insert
--@BookId int,
--@BookName varchar,
--@BookCount int
--as
--begin
--insert into Book values(@BookId,@BookName,@BookCount)
--end

--exec USP_Book_Insert 100,'TwoStates',1
--exec USP_Book_Insert 101,'Wings',3
--exec USP_Book_Insert 102,'Three',2
--exec USP_Book_Insert 103,'Azam',3
--exec USP_Book_Insert 104,'Gajab',2

--select * from Book

