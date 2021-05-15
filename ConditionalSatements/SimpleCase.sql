use MYBD
---For one row--
update Emp set ESal=ESal+ESal*0.2 where Job='manager'
select * from Emp

update Emp
set ESal=case Job
         when 'manager' then ESal+(ESal*0.2)
		 when 'clerk' then ESal+(ESal*0.10)
		 when 'SalesExicutive' then ESal+(ESal*0.15)
		 when 'hr' then ESal+(ESal*0.10)
		 else ESal+(ESal*0.5)
		 end
---Copying one table to another table--
select * into EmpR from Emp
select * from Emp
select * from EmpR
select * into Emp from EmpR




