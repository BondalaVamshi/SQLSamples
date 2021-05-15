use MYBD
select * from EmployInfo
create view vw_EmployInfoSelect
as 
select * from EmployInfo
select * from vw_EmployInfoSelect
---selecting specific records from view
select EName,ESal from vw_EmployInfoSelect


create view vw_EmployInfoEMail
as
select EMailId from EmployInfo
select EMailId from vw_EmployInfoEMail
---delete EName from vw_EmployInfoEMail where EId=100
delete from vw_EmployInfoEMail where EMailId='nakul.cognine@gmail.com'
delete  from vw_EmployInfoEMail where EMailId='nakul.cognine@gmail.com' 
insert into vw_EmployInfoEMail(EMailId,EName) values('hello','nakul.cognine@gmail.com') 
select * from EmployInfo
select * from FirstStudent

create view vw_CustomerSelect
as 
select * from Customer
insert into vw_CustomerSelect values(100,'Ram','MeeSeva',4)
insert into vw_CustomerSelect values(1,'Albert','Visa',2)
delete from vw_CustomerSelect where CustomerId=1

grant select,insert,delete,update on vw_CustomerSelect to uservamshi
revoke insert,delete on vw_CustomerSelect from uservamshi



