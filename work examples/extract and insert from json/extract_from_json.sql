--sp
EXEC [dbo].[Sp_Cu_Insert_Tbl_Cu_ExchangeStudent_LOG_GetCurrency] @WorkflowInstanceId,$StatusID,$PL_PortalLogID,$PL_PortalUserID,$PortalEntryID,
$IsCancel ,$IsEdited


--get json data from Tbl_Cu_PortalReceiveLog
select
	top 1000 *
from
	Tbl_Cu_PortalReceiveLog


--data value example
{"date":"2016/11/05","time":"12:02:31","FormID":"122","PageID":"567","UserId":"121","WorkflowID":"46","IsCancel":"0","IsEdited":"0","EntryID":"45811","Nationality":"1","fName":"Å—Ì”«","MiddleName":"","LastName":"ŒÊ—‘ÌœÅ‰«Â","NationalityCode":"5411745462","fNameEN":"parisa","MiddleNameEN":"","LastNameEN":"khorshidpanah","CountryOfCitizenship":"","PassportNO":"","BirthCertificate":"1023","SerialBirthCertificate":"123456","DateOfBirthSH":"1395/08/01","DateOfBirthMI":"","MobileNO":"09121778648","Email":"pa_khorshidpanah@yahoo.com","AttachmentPersonalPhoto":"https://portal.saorg.ir/wp-content/uploads/formidable/122/122_2282-8.jpg","AttachmentImagePages":"https://portal.saorg.ir/wp-content/uploads/formidable/122/122_2283-6.jpg","AttachmentNationalityCardImage":"https://portal.saorg.ir/wp-content/uploads/formidable/122/122_2284-5.jpg","AttachmentPasportImage":"","fatherName":"⁄·Ì","GenderIRAN":"1","NationalityOfTheFather":"","MotherName":"","NationalityOfTheMother":"[2263]","NationalityOfTheMotherNoIran":"","PlaceOfBirth":" Â—«‰","MaritalStatus":"1","ReligionNoIRAN":"1","JobNoIRAN":"4","MilitaryService":"","EmploymentStatusIRAN":"3","TypeOfWork":"2","NameOfWorkIRAN":" ” ","PhysicalCondition":"1","StatusScarifying":"1","CodeSacrifice":"45455","phoneNoIRAN":"02155558547","PostalCode":"1234567890","PostalAddress":"","WorkAddress":"","AttachmentImageMilitary":"","EducationPlace":"2,1,2,","EducationGrade":"8,10,2,","UniversityType":",,,","NameAlmaMaterInside":",,,","FieldOfStudyInside":",,,","OrientationInside":",,,","CountryMater":"1,,3,","StateInside":",2,,","CityInside":",32,,","Cityout":"hghjghjg,,À›Àﬁ›,","HighSchoolName":", ” ,,","SchoolStartDateInside":",1395/08/01,,","SchoolEndDateInside":",1395/08/15,,","NameAlmaMaterOut":"hjgjhghjg,,»Ì·Ì»·,","EducationalStatus":"2,,4,","Typeofeducation":"1,,1,","FieldOfStudyOut":",,,","OrientationOut":"jkgjgh,,«»«·«,","TrackingCodeDiplom":"4545,,4545,","SchoolStartDateOut":"2016/11/01,,2016/11/01,","SchoolEndDateOut":",,,","DateEvaluationOfEvidence":",,,","FileNumber":",,,","AverageFromdiplom":",12,,","AverageTo":",,,","AttachmentPictureQualification":",https://portal.saorg.ir/wp-content/uploads/formidable/200/200_2298-7.jpg,,","AttachmentImageArzeshnameh":",,,","FieldOfStudyDiploma":",1,,"}


--create a temporary table with json file and show the files
CREATE TABLE #tb_ExchangeStudent ( Tazarv_ID INT )
        EXEC dbo.Sp_GenerateJsonTable '#tb_ExchangeStudent', @jSon
		select ...


--questions
--top 1 neccesary ?

--!!
DECLARE @Count AS INT=(SELECT  Count(*)
                        FROM    dbo.Tbl_Cu_GetCurrencyForStudent_LOG
                        WHERE   PortalLogID = @PortalLogID)
						print @Count
IF ISNULL(@Count,0)=0
            BEGIN	
                PRINT 'Insert Tbl_Cu_ExchangeStudent_LOG'
                INSERT  INTO dbo.Tbl_Cu_GetCurrencyForStudent_LOG


