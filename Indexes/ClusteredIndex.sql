---create clustered index CX_EmployInfo_ESal on EmployInfo(ESal)
--only one clusterd index per table
--primary key column is the clustered index fro that table 
--if no primary key to that table only we can define that as clustered index

select * from Truck
create clustered index CX_Truck_TruckName on Truck(TruckName)

insert into Truck(TruckName,TruckCost,DateOfManufacture) values
('TVS Truck',450000,'12-12-2020')
insert into Truck(TruckName,TruckCost,DateOfManufacture) values
('TVS Truck',450000,'12-12-2020')
--create unique index UX_Truck_TruckName on Truck(TruckName)



