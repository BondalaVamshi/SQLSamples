use MYBD
select * from FirstStudent
select * from FirstStudent where SId=2
---AND---
select * from FirstStudent  where SId=2 and SClass='first'
select * from FirstStudent where TutionFee>=10000 and VanFee>=3000
select * from FirstStudent where SName between 's1' and 's3'
select * from FirstStudent where TutionFee between 10000 and 15000

---OR---
select * from FirstStudent where SName='s2' or SAddress='karimnagar'
--select * from FirstStudent where TutionFee between 10000 or 15000
select * from FirstStudent where SName='s2' or  SAddress not like'kari%'
--select * from FirstStudent where SName in('s1','s2') or like('s%')
select * from FirstStudent where SName in('s1','s2') or SName like('s%')

---NOT---
select * from FirstStudent where SAddress not like('kar%')
select * from FirstStudent where SName='s2' or  SAddress not like'kari%'
select * from FirstStudent where SAddress not in('karimnagar')
select * from FirstStudent where TutionFee not like(10000)
select * from FirstStudent where TutionFee not in(10000)




select * from FirstStudent  where SId=2 and SClass='first'
select * from FirstStudent where SName='s2' or SAddress='karimnagar'
select * from FirstStudent where TutionFee>=10000 and VanFee>=3000
--select * from FirstStudent where TutionFee>=10000 between VanFee>=3000
select * from FirstStudent where SName between 's1' and 's3'
select * from FirstStudent where TutionFee between 10000 and 15000
--select * from FirstStudent where TutionFee between 10000 or 15000


select * from FirstStudent where  SAddress='ka'
select * from FirstStudent where  SAddress='karim%'
select * from FirstStudent where SAddress like'karim%'
select * from FirstStudent where SAddress not like('kar%')
select * from FirstStudent where SName='s2' or  SAddress not like'kari%'
select * from FirstStudent where SAddress not in('karimnagar')
select * from FirstStudent where SName in('s1','s3')
select * from FirstStudent where SName in('s1',like's%')
select * from FirstStudent where SName in('s1','s2') or like('s%')
select * from FirstStudent where SName in('s1','s2') or SName like('s%')




