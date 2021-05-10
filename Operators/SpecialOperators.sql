---BETWEEN---
select * from FirstStudent where TutionFee between 10000 and 15000
select * from FirstStudent where TutionFee between 15000 and 10000
--select * from FirstStudent where TutionFee between 10000 or 15000
select * from FirstStudent where SName between 's1' and 's3'
select * from FirstStudent where SName between 's3' and 's1'
select * from FirstStudent where SName not between 's1' and 's3'

---IN---
select * from FirstStudent where SName in('s1','s3')
select * from FirstStudent where TutionFee in(12000,13000)
select * from FirstStudent where TutionFee in(13000,12000)
select * from FirstStudent where SName in('s1','s2') or SName like('s%')

---like---
select * from FirstStudent where SName like's%'
select * from FirstStudent where SAddress like'ka%'
select * from FirstStudent where SAddress like'%ar'
select * from FirstStudent where TutionFee like '1%'
select * from FirstStudent where TutionFee like '%1'
select * from FirstStudent where SName like 's_'
select * from FirstStudent where SName like '_1'
select * from FirstStudent where SAddress like '_ari%'
select * from FirstStudent where TutionFee like '_2%'
select * from FirstStudent where TutionFee like '_2______'
select * from FirstStudent where SAddress like '[ks]%'
select * from FirstStudent where SAddress like '[ks%]'
select * from FirstStudent where SAddress like '[k_s]%'
select * from FirstStudent where SAddress like '[k_s%]'

---IS---
select * from  FirstStudent where SId is null
select * from  FirstStudent where SId is not null















