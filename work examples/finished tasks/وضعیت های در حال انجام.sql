--use  SAODB

--فرآیند پذیرش دانشجویان قهرمان ورزشی
select * from dbo.Tbl_CU_LogStatus
where wid = 109
and exactmessage not like N'%خاتمه%'

----فرآیند استعلام مدرک تحصیلی 
select * from dbo.Tbl_CU_LogStatus
where wid = 2000556
and exactmessage not like N'%خاتمه%'


---فرآیند ویرایش اطلاعات سامانه مهر اداره دانش آموختگان  
select * from dbo.Tbl_CU_LogStatus
where wid = 2000560
and exactmessage not like N'%خاتمه%'

----فرآیند استعلام سوابق تحصیلی   
select * from dbo.Tbl_CU_LogStatus
where wid = 2000558  --  به اضافه کد 382
and exactmessage not like N'%خاتمه%'


-------فرآیند درخواست موسسات فعال اعزام دانشجو به خارج از کشور
select * from dbo.Tbl_CU_LogStatus
where wid = 2000561
and exactmessage not like N'%خاتمه%'


----فرآیند صدور مجوز موسسات جذب دانشجوی بین الملل
select * from dbo.Tbl_CU_LogStatus
where wid = 2000567
and exactmessage not like N'%خاتمه%'


----فرآیند صدور معافیت تحصیلی
select * from dbo.Tbl_CU_LogStatus
where wid = 2000040
and exactmessage not like N'%خاتمه%'

----صدور گواهی اشتغال به تحصیل
select * from dbo.Tbl_CU_LogStatus
where wid = 57
and exactmessage not like N'%خاتمه%'


