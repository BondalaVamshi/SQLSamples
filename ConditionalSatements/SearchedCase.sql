select * from Emp

select EName,ESal,case 
when ESal>20000 then 'HiSal'
when ESal<20000 then 'LowSal'
else 'AvgSal'
end as SalRange
from Emp