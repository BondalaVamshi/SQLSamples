create function CalC(@A int,@B int,@Op char(1)) returns int
as
begin 
 declare @Res int
 if(@Op='+')
  begin
  set @Res=@A+@B
  end
else if(@Op='-')
  begin
  set @Res=@A-@B
  end
else if(@Op='*')
  begin
  set @Res=@A*@B
  end
else if(@Op='/')
  begin
  set @Res=@A/@B
  end
return @Res
end

grant select,insert on CalC to uservamshi
select dbo.CalC(2,3,'*')