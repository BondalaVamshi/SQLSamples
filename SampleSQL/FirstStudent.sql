use MYBD
create table FirstStudent
(
SId int constraint PK_FirstStudent_SId primary key,
SName varchar(30) not null,
SClass Varchar(20) not null,
SAddress varchar(50),
TutionFee  money check(TutionFee>10000),
VanFee money check(VanFee>2000)
);
insert into FirstStudent(SId,SName,SClass,SAddress,TutionFee,VanFee) 
       values(2,'s2','first','karimnagar-adarshanagar',12000,2500);
insert into FirstStudent values
(3,'s2','second','karimnagar-ganeshnagar',13000,3000),
(4,'s3','third','siricilla-vidyanagar',15000,6000)

