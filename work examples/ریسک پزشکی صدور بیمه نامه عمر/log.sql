--select * from tbl_frm91757

select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'Tbl_Cu_MedicalRiskAssessment_Log'
and COLUMN_NAME like N'%tasvir%'

select 
*
from
	Tbl_frm91730
where
	frm91730Id in(select PKFormID from task.TblFormInstance where FormID = 91730 and WorkflowInstanceId = 299193)


select * from Workflow.TblWorkflow f join task.TblWorkflowInstance i on i.WorkflowID = f.WorkflowId
where f.WorkflowId = 64



select *
from Tbl_Cu_MedicalRiskAssessmentManual_Log



create proc [dbo].[Sp_Cu_Insert_Tbl_Cu_MedicalRiskAssessmentManual_LOG]
	@wfid bigint,
	@statusID int
as
	begin
		declare
			@fullnameBG nvarchar(50),
			@PortalUserID bigint,
			@nationalcodeBG nvarchar(10),
			@mobileBG nvarchar(11),
			@areacodeBG nvarchar(10),
			@issueCodeBG nvarchar(50),
			@representativeCodeBG nvarchar(20),
			@stateBG nvarchar(50),
			@cityBG nvarchar(50),
			@insurancePremium nvarchar(50),
			@deathCapital nvarchar(50),
			@marketer nvarchar(50),
			@TotalDeathCapital nvarchar(50),
			@insurancePremiumNormalize int,
			@DeathCapitalNormalize int,
			@birthDateBG nvarchar(10),
			@addressBG nvarchar(200),
			@pushesBimeh nvarchar(500),
			@MablaghePusheshHayeBimeh nvarchar(500),
			@fullBNO nvarchar(500),
			@HagheBimehNameh nvarchar(500),
			@sarmayeFot nvarchar(500),
			@fullnameBS nvarchar(50),
			@nationalcodeBS nvarchar(10),
			@mobileBS nvarchar(11),
			@areacodeBS nvarchar(10),
			@stateBS nvarchar(50),
			@cityBS nvarchar(50),
			@birthdateBS nvarchar(10),
			@AddressBS  nvarchar(500),
			@height int,
			@weight int,
			@AmountSmoking nvarchar(100),
			@isPregnant bit,
			@pregnancyDuration int,
			@isMilitaryExemption bit,
			@militaryExemptionImage nvarchar(500),


------------------------------------------------------------
		select 
			@fullnameBG = col_4996051712239012429,
			@PortalUserID = col_5083071149193519131,
			@nationalcodeBG = Col_5354226796803514228,
			@mobileBG = Col_4755600890667818946,
			@areacodeBG = col_5292840040682030816,
			@issueCodeBG = Col_5182010505337370009,
			@representativeCodeBG = col_5134022026995763887,
			@stateBG = Col_4940478349961659430,
			@cityBG = col_5518667553780090200,
			@insurancePremium = col_4873655367439572678,
			@deathCapital = col_5619538758102234592,
			@marketer = col_4743910312484250572,
			@TotalDeathCapital = col_5443915052471245749,
			@insurancePremiumNormalize = col_5549157320149996705,
			@DeathCapitalNormalize = col_5610315094603692873,
			@birthDateBG = col_5460786000146737809,
			@addressBG = col_5562455453941057134,
			@pushesBimeh = (select Pushesh from Tbl_Cu_MedicalRiskAssessment_PusheshBimeh where WFID = @wfid),
			@MablaghePusheshHayeBimeh = (select MablaghePushesh from Tbl_Cu_MedicalRiskAssessment_PusheshBimeh where WFID = @wfid),
			@fullBNO = (select FullBNo from Tbl_Cu_MedicalRiskAssessment_SavabegheKharid where WFID = @wfid),
			@HagheBimehNameh = (select HagheBimehNameh from Tbl_Cu_MedicalRiskAssessment_SavabegheKharid where WFID = @wfid),
			@sarmayeFot = (select SarmayeFot from Tbl_Cu_MedicalRiskAssessment_SavabegheKharid where WFID = @wfid),
			@fullnameBS = col_5249624830487053764,
			@nationalcodeBS = col_5647599033154703227,
			@mobileBS = col_4820916307806012753,
			@areacodeBS = col_4848937291091475000,
			@stateBS = col_5669647661299325473,
			@cityBS = col_5531655164272382434,
			@birthdateBS = col_5028088314448865858,
			@AddressBS = col_5198792982794461632,
			@height = col_5045207748475607333,
			@weight = col_4781927878997960280,
			@AmountSmoking = col_5609992256523838106,
			@isPregnant = col_5700232342898255774,
			@pregnancyDuration = col_5343926632253260782,
			@isMilitaryExemption = col_5248837877674951145,
			@militaryExemptionImage = col_5321732379437063143,


		from
			Tbl_frm91730
		where
			frm91730Id in(select PKFormID from task.TblFormInstance where FormID = 91730 and WorkflowInstanceId = @wfid)

	---------------------------------------------------------------


		insert into Tbl_Cu_MedicalRiskAssessmentManual_Log
		(
			[WFID], [GUID], [RegDate], [RegTime], [PortalUserID], [FullNameBG], [CodeMelliBG], [MobileBG], [CodePostiBG],
			[CodeSodur], [CodeNamayandegi], [ProvinceBG], [CityBG], [Prm], [DeathCapital], [Bazaryab], [TotalDeathCapital],
			[TadileHagheBimeh], [TadileSarmayeFot], [AddressBG], [PusheshHayeBimeh], [MablaghePusheshHayeBimeh], [FullBNo],
			[HagheBimehNameh], [SarmayeFot], [FullNameBS], [CodeMelliBS], [MobileBS], [CodePostiBS], [ProvinceBS], [CityBS],
			[AddressBS], [Height], [Weight], [AmountSmoking], [Pregnant], [DurationPregnancy], [MoafiyatSarbazi], [TasvireKarteMoafiyatSarbazi],
			[Jarahi], [BimarieKhas], [Nesbat], [Age], [NoeBimari], [EntryID], [StatusID], [EndStatusID], [ConfirmType], [CreateDate], [CreateTime],
			[BranchCode], [PaymentDate], [PaymentTime], [ResponseWebServiceMedicalRiskRegisterSendData], [SurgeryHistory], [NoSurgeryHistory],
			[HospitalizationCause], [SurgeryChoice], [HospitalizationDate], [TreatmentsResult], [BirthDate], [BirthDateBG]
		)


		values( 
			@wfid,
			newid(),
			dbo.MiladiToShamsi(getdate()),
			cast(convert(time,getdate()) as nvarchar(5)),
			@PortalUserID,
			@fullnameBG,
			@nationalcodeBG,
			@mobileBG,
			@areacodeBG,
			@issueCodeBG,
			@representativeCodeBG,
			@stateBG,
			@cityBG,
			@insurancePremium,
			@deathCapital,
			@marketer,
			@TotalDeathCapital,
			@insurancePremiumNormalize,
			@DeathCapitalNormalize,
			@addressBG,
			@pushesBimeh,
			@MablaghePusheshHayeBimeh,
			@fullBNO,
			@HagheBimehNameh,
			@sarmayeFot,
			@fullnameBS,
			@nationalcodeBS,
			@mobileBS,
			@areacodeBS,
			@stateBS,
			@cityBS,
			@AddressBS,
			@height,
			@weight,
			@AmountSmoking,
			@isPregnant,
			@pregnancyDuration,
			@isMilitaryExemption,
			@militaryExemptionImage,


			)

	end


