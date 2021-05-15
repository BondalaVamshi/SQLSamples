declare @InputNo int,@OutPutNo varchar(500) 
set @InputNo=1
set @OutPutNo=''
while(@InputNo<=10)
 begin
 print @InputNo
 set @OutPutNo=@OutPutNo+CAST(@InputNo as varchar(50))+','
 set @InputNo=@InputNo+1
 end
print left(@OutPutNO,len(@OutPutNo)-1)

---pattern--
set @InputNo=1
while(@InputNo<=5)
 begin
 print replicate('*',@InputNo)
 set @InputNo=@InputNo+1
 end
declare @InputNo int,@OutPutNo varchar(50) 
 set @InputNo=1
 set  @OutPutNo='srinivas'
 while(@InputNo<=LEN(@OutPutNo))
  begin
  print substring(@OutputNo,@InputNo,1)
  set @InputNo=@InputNo+1
  end

 ---No Tables--
 declare @TableValue int,@OutputValue varchar(50),@OutPutNo int ,@InputNo int

 set @InputNo=7
 set @TableValue=1
 
 while(@TableValue<=30)
 begin
  set @OutPutNo=@InputNo*@TableValue
  set @OutputValue=CAST(@InputNo as varchar)+'*'
    +CAST(@TableValue as varchar)+'='+CAST(@OutPutNo as varchar)
  print @OutputValue
  Set @TableValue=@TableValue+1
 end
