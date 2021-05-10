sp_rename Emp,EmpTable
select * from EmpTable
sp_rename 'EmpTable.EId','EmpId'
select * from EmpTable

---Aliase---
select EName as EMPName from EmpTable
select * from EmpTable
select * from EmpTable
select ESal+location as SomeThing from EmpTable
