
---Upper---
select UPPER('hello world')
select UPPER('hello world') as wishes
select upper(EName) as ENAME from Emp
select *  from Emp

---Lower---
select lower('hello world') as wishes
print lower('WORLD')
update Emp set GMail=UPPER(EName)+LOWER(Job)+'@cognine.com'
print len('World')

---Left---
print left('hello world',3)
select * from Emp where left(EName,1)=RIGHT(EName,1)
update Emp set GMail=UPPER(EName)+LOWER(left(Job,6))+'@cognine.com'

---Right---
print right('hello world',3)
select * from Emp where right(EName,1)='n'

---SubString---
select SUBSTRING('hello from EMP',2,8)
select SUBSTRING(GMail,2,5) as substringof from Emp


print upper('hello')
print lower('WORLD')
print len('World')
alter table Emp add GMail varchar(50)
select * from Emp where EName like '%n'
select * from Emp where EName like 'n%n' or EName like 'a%a'
