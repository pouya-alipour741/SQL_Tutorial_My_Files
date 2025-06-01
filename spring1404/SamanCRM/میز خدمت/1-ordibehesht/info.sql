
--changed form and wf  --  141,167,243, 61368 - فرآیند میز خدمت فناوری اطلاعات فاز دوم


--گرفتن کاربران مجاز ثبت کننده میز خدمت
SELECT TOP 1000      
            *
        FROM [dbo].[Tbl_CU_AD_User_Properties]
        WHERE 
			--[GUID] = '9894eb08-e608-4243-a0a3-e58028fd4ec7' and
               [PropName] = 'title'