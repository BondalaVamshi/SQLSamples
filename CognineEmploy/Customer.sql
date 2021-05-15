	use MYBD
	create table Customer
	(
	CustomerId int,
	CustomerName varchar(50)
	);
	---Adding Primary Key---
	alter table Customer
	 alter column  CustomerId int not null
	alter table Customer
	 add constraint PK_Customer_CustomerId primary key(CustomerId)
	 ---Adding Column---
	 alter table Customer
	 add ProjrctName varchar(50) 
	--Adding Not Null Constraint--
	update Customer
	 set ProjrctName = ISNULL(ProjrctName,'MeeSeva')
	 alter table Customer
	 alter column  ProjectName varchar(100) not null
	 ---adding Foreign Key---
	 alter table Customer
	  add foreign Key (ProjectName) references ProjectInfo(ProjectName)
	 alter table Customer
	 add ProjrctId int 
	 sp_rename 'Customer.ProjrctName','projectName'
	 add ProjrctId int 
	 sp_rename 'Customer.ProjrctId','projectId'
	 ---Adding unique---
	 alter table Customer
	  add constraint UK_Customer_CustomerName unique(CustomerName )
	  ALTER TABLE Persons
ADD CONSTRAINT UC_Person UNIQUE (ID,LastName);
delete from Customer group by CustomerName having COUNT(*)=2
delete from Customer where CustomerName in(select CustomerName from Customer group by CustomerName having COUNT(CustomerName)>1)
 
	 select * from Customer
	 select * from ProjectInfo
	 select * from EmployInfo
	 insert into Customer values(11,'alber')
	alter table Customer
	 add foreign key(CustomerName) references 

	 --alter table Customer
	 -- alter column CustomerId int identity(10,1)
	 ---insert into Customer(CustomerName) values('alber')
	 --alter table Customer
	 -- alter column Customerid
	 --alter table Customer
	 -- add  CustomerId int identity(10,1)
    insert into Customer values(1,'ALbert','Visa',2)
    insert into Customer values(2,'Einstene','MumbaiMetro',4),(3,'Savera','MeeSeva',3)