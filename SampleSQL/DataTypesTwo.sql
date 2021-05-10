Create table Car
	(
	Company  varchar(20) not null,
	CarModel varchar(20) constraint UK_Car_CarModel unique,
	CarId    int         constraint PK_Car_CarId    primary key,
	CarPrice money       constraint CK_Car_CarPrice check(CarPrice>500000)
	);
	insert into Car values('Tata','Tiago',111,   6000000)
	update Car   set CarPrice = 600000
	insert into Car values ('Tata','Altroze',112,500000)
	insert into Car values ('Zeep','Compass',2001,3000000),('Zeep','Willys',2005,550000)

