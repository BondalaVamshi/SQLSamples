	use MYBD
	select * from Emp
	---Rank---
	select EName,rank()over(order by ESal desc) from Emp
	insert into Emp(EId,EName,Job,ESal,HireDate) 
		values(6,'sugreev','clek',6500,'02-01-2018')
		insert into Emp(EId,EName,Job,ESal,HireDate) 
		values(6,'megnath','salesExicutive',6500,'02-01-2018')
		insert into Emp(EId,EName,Job,ESal,HireDate) 
		values(7,'vali','clek',6000,'02-01-2019')
		---Dense_Rank---
	select EName,dense_rank()over(order by ESal desc) from Emp
	select EName,dense_rank()over(order by ESal desc,HireDate asc) as rank from Emp





