---Adding Column--
alter table Emp add location varchar(40)
update Emp set location='hyd' where EId=1

---Modifying Column---
alter table Emp alter column location char(50)
alter table Emp alter column location int
select * from Emp

---Drop Column---
alter table Emp drop column location
 


