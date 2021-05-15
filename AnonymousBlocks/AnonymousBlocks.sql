use MYBD
---declaring a variable---
declare @Name varchar(40),@Age int
---Asiigning/Set values to variables--
set @Name='Anji'
set @Age=20
print @Name print @Age

declare @Village varchar(30)='karimnagar'
print @Village

declare @Sal money
select @Sal=ESal from EmployInfo ---where EId=100
print @Sal
select * from EmployInfo

declare @S1 varchar(40), @ReverseName varchar(30)
set @S1='naresh'
set @ReverseName=REVERSE(@S1)
print @ReverseName


