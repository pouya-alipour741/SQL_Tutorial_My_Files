
--changed form and wf  --  141,167,243, 61368, 157 - فرآیند میز خدمت فناوری اطلاعات فاز دوم
--change status id  from 199 to 360 for  middle path

--if needed forfrm 141 onvan field

--begin tran
--update Tbl_CU_Base_FieldSubject_FRM157
--set NeedManagerConfirmation = 0
--where NeedManagerConfirmation is null

--commit

--گرفتن کاربران مجاز ثبت کننده میز خدمت
SELECT TOP 1000      
            *
        FROM [dbo].[Tbl_CU_AD_User_Properties]
        WHERE 
			--[GUID] = '9894eb08-e608-4243-a0a3-e58028fd4ec7' and
               [PropName] = 'title'