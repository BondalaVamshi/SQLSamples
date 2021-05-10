select * from FirstStudent order by TutionFee desc
select * from FirstStudent order by TutionFee asc
select * from FirstStudent order by TutionFee

select SId,SName,SClass,TutionFee from FirstStudent order by SClass
select SId,SName,SClass,TutionFee,VanFee from FirstStudent order by VanFee desc
select SId,SName,SClass,TutionFee from FirstStudent order by VanFee desc
select SId,SName,SClass,TutionFee,VanFee from FirstStudent order by 3 desc
select SId,SName,SClass,TutionFee,VanFee from FirstStudent order by 3 desc,4 asc
--select SId,SName,SClass,TutionFee,VanFee from FirstStudent order by 6 desc
select * from FirstStudent order by TutionFee+VanFee desc
select * from FirstStudent order by TutionFee+SId desc
--select * from FirstStudent order by SName+SId desc