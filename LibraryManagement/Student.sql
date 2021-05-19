use MYBD
create table Student
(
StudentId int constraint PK_Student_StudentId primary key,
StudentName varchar(50) not null,
StudentYear int not null check(StudentYear in(1,2,3,4))
);


create procedure USP_Student_Insert
@StudentId int,
@StudentName varchar(50),
@StudentYear int
as
 begin
 insert  into Student values(@StudentId,@StudentName,@StudentYear)
 end

 exec USP_Student_Insert 1,'Arjun',2
 exec USP_Student_Insert 2,'Krishna',1
 exec USP_Student_Insert 3,'Radha',1
 exec USP_Student_Insert 4,'Balaram',3


 create function FN_Student_StudentDetails() returns table
as
return(select * from Student)

 