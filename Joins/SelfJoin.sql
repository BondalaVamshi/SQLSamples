create table EmpY
(
EmpNo int PRimary key,
EName varchar(30) not null,
Mgr int 
);

insert into EmpY values
(1,'a',NUll),
(2,'b',1),
(3,'c',1),
(4,'d',2),
(5,'e',3)



select X.EName  ,Y.EName as mgr
from EmpY as x,EmpY as Y
where X.Mgr=Y.EmpNo