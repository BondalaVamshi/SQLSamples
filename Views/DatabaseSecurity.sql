use MYBD
select * from EmployInfo
select * from Employee
grant select,insert,update,delete on 
ProjectInfo  to uservamshi
--Employee and ProjectInfo to uservamshi
in(Employee , ProjectInfo,EployInfo,SalGrade,BranshInfo,Customer) to uservamshi

grant select,insert,update,delete on EmployInfo to uservamshi
revoke select,insert,update,delete on EmployInfo from uservamshi 

create database MYDB
use[MYBD]
go 
create user[uservamshi] for login[vamshi]
go
use[MYBD]
go 
create user[vamshi] for login[vamshi]
go
drop database MYDB


