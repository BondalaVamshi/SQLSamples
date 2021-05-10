	Create table Truck
	(
	TruckName varchar(30),
	TruckDetails varchar(100),
	ManufacturedStateId char(2),
	DateOfManufacture  date,
	TruckCost money,
	InsurenceCost smallmoney,
	DateOfBooking datetime default(getdate()),
	DateOfDelivery date
	);
	--Drop table  Truck
	insert into Truck
	(TruckName,TruckDetails,ManufacturedStateId,DateOfManufacture,TruckCost,InsurenceCost,DateOfDelivery)
	values('Tata ace','mini truck,Power:50hp','TS','01-01-2021',500000,1000,'02-01-2021'),
	('Eicher Truck','truck,Power:60hp','AP','01-12-2020',1000000,10000,'02-01-2021')
	
	insert into Truck
	values('AshokLyland Truck','truck,Power:60hp','AP','01-12-2020',1000000,10000,'02-01-2021','02-01-2021 20:30:30')
	--Supply data type must match with the declared type
	--insert into Truck
	--values('AshokLyland Truck','truck,Power:60hp','AP',1000000,'01-12-2020',10000,'02-01-2021','02-01-2021 20:30:30')

	
	
	insert into Truck
	(TruckName,ManufacturedStateId,DateOfManufacture,TruckDetails)
	values
	('Tata max','DL','05-03-2021','power :60hp,milage :10kmmpl')
	select * from Truck
	--insert into Truck
	--(TruckName,ManufacturedStateId,DateOfManufacture,TruckDetails)
	--values
	--('Mahendra Truck','MH','power :100hp,milage :5kmpl','05-03-2021')
	