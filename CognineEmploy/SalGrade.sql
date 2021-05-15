use MYBD
create table SalGrade
(
Grade int primary key,
LoSal money unique not null,
HiSal Money unique not null
);
insert into SalGrade values
(11,15002,20000),
(12,20001,25000),
(13,25001,30000),
(14,30001,35000),
(15,35001,40000)
select * from SalGrade
--update SalGrade
-- set Grade=
--(select  Grade from SalGrade  order by Grade  desc)
