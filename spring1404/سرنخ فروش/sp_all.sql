alter table Tbl_Cu_FanavaranCustomersRecovery
add 
	AgentCode nvarchar(50),
	SarparastCode nvarchar(50),
	SarparastName nvarchar(200)

alter table Tbl_Cu_FanavaranCustomersRecovery_daily
add 
	AgentCode nvarchar(50),
	SarparastCode nvarchar(50),
	SarparastName nvarchar(200)

alter table Tbl_CU_SalesLeads_Log
add
	PersonID int,
	AgentCode nvarchar(50),
	SarparastCode nvarchar(50),
	SarparastName nvarchar(200)

go
-------------------
ALTER PROCEDURE [dbo].[Sp_Cu_SelectCountAll_Tbl_Cu_SalesLeadsRecovery_Log]
AS
BEGIN
	insert into Tbl_Cu_FanavaranCustomersRecovery
	([CustomerRecoverykey], [PolicyId], [EndDateKey], [FirstName], [LastName], [NationalID], 
	[MobileNo], [TelNo], [CodeSodurKey], [SodurDateKey], [ReshteID], [ReshteTitle], [CityId], 
	[CityName], [ProvinceName], [ProvinceID], [PersonID], [AgentName], [IsStartRecovery],
	AgentCode, SarparastCode, SarparastName)
	select 
		[CustomerRecoverykey], [PolicyId], [EndDateKey], [FirstName], [LastName], [NationalID], 
		[MobileNo], [TelNo], [CodeSodurKey], [SodurDateKey], [ReshteID], [ReshteTitle], [CityId], 
		[CityName], [ProvinceName], [ProvinceID], [PersonID], [AgentName] , 0, AgentCode, SarparastCode, SarparastName
	from [LINKSIDW].[CommonMart].cus.CustomersRecovery;
	

	Truncate Table Tbl_Cu_FanavaranCustomersRecovery_daily


	insert into Tbl_Cu_FanavaranCustomersRecovery_daily
	([CustomerRecoverykey], [PolicyId], [EndDateKey], [FirstName], [LastName], [NationalID], 
	[MobileNo], [TelNo], [CodeSodurKey], [SodurDateKey], [ReshteID], [ReshteTitle], [CityId], 
	[CityName], [ProvinceName], [ProvinceID], [PersonID], [AgentName], [IsStartRecovery],
	AgentCode, SarparastCode, SarparastName)
	select 
		[CustomerRecoverykey], [PolicyId], [EndDateKey], [FirstName], [LastName], [NationalID], 
		[MobileNo], [TelNo], [CodeSodurKey], [SodurDateKey], [ReshteID], [ReshteTitle], [CityId], 
		[CityName], [ProvinceName], [ProvinceID], [PersonID], [AgentName], 0, AgentCode, SarparastCode, SarparastName
	from [LINKSIDW].[CommonMart].cus.CustomersRecovery


	DECLARE @TempTablePolicyID TABLE (
		PolicyID bigint
	)
	
	INSERT INTO @TempTablePolicyID
	select PolicyID from Tbl_CU_SalesLeads_Log
	where PolicyID > 0
	
	
	SELECT COUNT(DISTINCT CustomerRecoverykey) FROM Tbl_Cu_FanavaranCustomersRecovery_daily
	where PolicyID not in (select PolicyID from @TempTablePolicyID)
		AND CodeSodurKey not in (select BranchCode from Tbl_Cu_PassiveAgentsForRecovery where [Status] = 1)	
END
-------------------
go

create proc sp_cu_CheckIsRecovery_frm198
	@wfid bigint
as
begin
	if exists(
	select 1
	from Tbl_CU_SalesLeads_Log
	where
		WFID = @wfid
		and InputPort = 6)
		select 1 as res
	else
		select 0 as res
end

go


ALTER PROCEDURE [dbo].[Sp_Cu_Search_Tbl_CU_Base_ActiveComplainUnits_frm202_new]
    @BranchName AS NVARCHAR(50),
    @BranchCode AS NVARCHAR(50),
@type int
AS
BEGIN
    SET @BranchName = dbo.Fn_CU_FixPersianString(@BranchName)
    SELECT distinct(cntrCode ) as BranchCode,
           cntrName as BranchName,
           cntrId as ComplainUnitsID
    FROM [192.168.100.160].ForSite.[dbo].agentForSite --INNER JOIN dbo.Tbl_CU_Base_DefinitionAgency ON cntrCode COLLATE DATABASE_DEFAULT=AgencyCode
    WHERE (
              @BranchName = ''
              OR cntrName LIKE '%' + @BranchName + '%'
          )
          AND
          (
              @BranchCode = ''
              OR cntrCode LIKE '%' + @BranchCode + '%'		  
          )
		  AND    (
              @type = '-1'
              OR cntrKindCode =@type
          )
		  and cast(@BranchCode as int) not in (select BranchCode from Tbl_Cu_PassiveAgentsForRecovery where [Status] = 0)
		--  AND MemorandumUnderstandingDate!='' 
		 -- AND dbo.Tbl_CU_Base_DefinitionAgency.IsActive=1;
END;

go

-- =============================================
ALTER PROCEDURE [dbo].[Sp_Cu_Insert_Update_Tbl_CU_SalesLeads_Log]
    @WFID AS BIGINT,
    @statusID AS INT,
    @GUIDD AS NVARCHAR(100),
	@IsAutomate bit,
	@CustomerRecoveryKey bigint -- ورودی این متغیر تغییر یافت به policyId
AS
BEGIN

    IF @statusID = 115
    BEGIN
        UPDATE dbo.Tbl_frm198
        SET Col_5070546843852189382 =
            (
                SELECT TOP 1
                       UserID
                FROM Task.TblTask
                    INNER JOIN Task.TblWorkflowActivityInstance
                        ON TblWorkflowActivityInstance.WorkflowActivityInstanceID = TblTask.WorkflowActivityInstaceID
                WHERE ActivityID = 4959668128175707313
                      AND TaskStatusID = 2
            ),
            Col_5149611784371480095 = dbo.fn_CU_MiladiToShamsi(GETDATE()),
            Col_5493914966483501897 = dbo.OnlyTime(GETDATE())
        WHERE frm198Id IN
              (
                  SELECT MAX(PKFormID)
                  FROM Task.TblFormInstance
                  WHERE WorkflowInstanceId = @WFID
                        AND FormID = 198
              );
    END;
    -----------------------------------------------------------------------------
    IF @statusID in(118,117) 
    BEGIN
        UPDATE dbo.Tbl_frm198
        SET Col_4621335856663143943 = dbo.fn_CU_MiladiToShamsi(GETDATE()),
            Col_5442010510253248869 = dbo.OnlyTime(GETDATE())
        WHERE frm198Id IN
              (
                  SELECT MAX(PKFormID)
                  FROM Task.TblFormInstance
                  WHERE WorkflowInstanceId = @WFID
                        AND FormID = 198
              );

		UPDATE Tbl_CU_SalesLeads_Log
        SET GUIDD = (select top 1 Col_5522297125622396319 from Tbl_frm198
						 WHERE frm198Id IN
							(
							    SELECT MAX(PKFormID)
							    FROM Task.TblFormInstance
							    WHERE WorkflowInstanceId = @WFID
							          AND FormID = 198
							))
       where WFID = @WFID

    END;

    DECLARE @UserID BIGINT,
            @RegDate NVARCHAR(10),
            @RegTime NVARCHAR(5),
            @InputPort INT,
            @NationalCode NVARCHAR(10),
            @FullName NVARCHAR(100),
            @MobileNO NVARCHAR(11),
            @PhoneNO NVARCHAR(11),
            @JobTitle NVARCHAR(50),
            @InsuranceGroupID INT,
			@InsuranceGroupTitle nvarchar(100),
            @ProvinceID INT,
			@ProvinceTitle nvarchar(100),
            @CityID INT,
			@CityTitle nvarchar(100),
            @Descript NVARCHAR(2000),
            @ExpertUserID BIGINT,
            @ExpertDate NVARCHAR(10),
            @ExpertTime NVARCHAR(5),
            @AgencyUserID BIGINT,
            @NextAgencyUserID BIGINT,
            @ContactDesc NVARCHAR(2000),
            @IsContact BIT,
            @ContactDate NVARCHAR(10),
            @ContactTime NVARCHAR(5),
            @ResultDesc NVARCHAR(1000),
            @Issued BIT,
            @NotIssued BIT,
			@CustomerContactID  int,
			@NegotiateCustomerID int,
			@ReasonRejectID int,
            @FullBno NVARCHAR(50),
			@PolicyID bigint,--شماره بیمه نامه قبلی;
			@NameBimehGozar NVARCHAR(150),
			@CodeBimehGozar BIGINT,
			@EndDateKey NVARCHAR(10),
			@ShobeSarParasti NVARCHAR(150),
			@RecoveryCodeSodurKey int,
			@PersonID int,
			@AgentCode nvarchar(200),
			@SarparastCode nvarchar(50),
			@SarparastName nvarchar(50)

    if @CustomerRecoveryKey=0
	begin
    SELECT @UserID = Col_4639891614577493038,
           @RegDate = Col_4962505521418366642,
           @RegTime = Col_5566475310013326353,
           @InputPort = Col_5221905107454111965,
           @NationalCode = Col_5222312950179194682,
           @FullName = Col_5457900391677280406,
           @MobileNO = Col_4613639992271604626,
           @PhoneNO = Col_5306351824122831530,
           @JobTitle = Col_4940331532834525606,
           @InsuranceGroupID = Col_5101302444275927146,
           @ProvinceID = Col_4741021543590103433,
           @CityID = Col_5631453772834689748,
           @Descript = Col_4628781788341651288,
           @ExpertUserID = Col_5070546843852189382,
           @ExpertDate = Col_5149611784371480095,
           @ExpertTime = Col_5493914966483501897,
           @IsContact = Col_5672081014092220427,
           @ContactDate = Col_4621335856663143943,
           @ContactTime = Col_5442010510253248869,
           @ResultDesc = Col_5676000566889795729,
           @Issued = Col_4713191385551044467,
           @NotIssued = Col_5372234100468683109,
           @FullBno = Col_5124242136251439262,
           @GUIDD = Col_5522297125622396319,
		    @CustomerContactID = Col_4716113222665995154,
		   @NegotiateCustomerID = Col_4911284196201931262,
		   @ReasonRejectID = Col_5611438163255659051,
           @NextAgencyUserID = Col_5649399619552018490
    FROM dbo.Tbl_frm198
    WHERE frm198Id IN
          (
              SELECT MAX(PKFormID)
              FROM Task.TblFormInstance
              WHERE WorkflowInstanceId = @WFID
                    AND FormID = 198
          );

    IF NOT EXISTS
    (
        SELECT *
        FROM [dbo].[Tbl_CU_SalesLeads_Log]
        WHERE WFID = @WFID
              OR ( [GUIDD] = @GUIDD and GUIDD<>'')
    )
    BEGIN
        PRINT 'Insert';
        INSERT INTO dbo.Tbl_CU_SalesLeads_Log
        (
            WFID,
            UserID,
            RegDate,
            RegTime,
            InputPort,
            NationalCode,
            FullName,
            MobileNO,
            PhoneNO,
            JobTitle,
            InsuranceGroupID,
            ProvinceID,
            CityID,
            Descript,
            ExpertUserID,
            ExpertDate,
            ExpertTime,
            AgencyUserID,
            NextAgencyUserID,
            ContactDesc,
            IsContact,
            ContactDate,
            ContactTime,
            ResultDesc,
            Issued,
            NotIssued,
            FullBno,
            GUIDD,
			StatusID,
		   CustomerContactID,
		   NegotiateCustomerID ,
		   ReasonRejectID,
		   IsAutomate
        )
        VALUES
        (   @WFID,             -- WFID - bigint
            @UserID,           -- UserID - bigint
            @RegDate,          -- RegDate - nvarchar(10)
            @RegTime,          -- RegTime - nvarchar(5)
            @InputPort,        -- InputPort - int
            @NationalCode,     -- NationalCode - nvarchar(10)
            @FullName,         -- FullName - nvarchar(100)
            @MobileNO,         -- MobileNO - nvarchar(11)
            @PhoneNO,          -- PhoneNO - nvarchar(11)
            @JobTitle,         -- JobTitle - nvarchar(50)
            @InsuranceGroupID, -- InsuranceGroupID - int
            @ProvinceID,       -- ProvinceID - int
            @CityID,           -- CityID - int
            @Descript,         -- Descript - nvarchar(2000)
            @ExpertUserID,     -- ExpertUserID - bigint
            @ExpertDate,       -- ExpertDate - nvarchar(10)
            @ExpertTime,       -- ExpertTime - nvarchar(5)
            @AgencyUserID,     -- AgencyUserID - bigint
            @NextAgencyUserID, -- NextAgencyUserID - bigint
            @ContactDesc,      -- ContactDesc - nvarchar(2000)
            @IsContact,        -- IsContact - bit
            @ContactDate,      -- ContactDate - nvarchar(10)
            @ContactTime,      -- ContactTime - nvarchar(5)
            @ResultDesc,       -- ResultDesc - nvarchar(1000)
            @Issued,           -- Issued - bit
            @NotIssued,        -- NotIssued - bit
            @FullBno,          -- FullBno - nvarchar(50),
            @GUIDD,
			@StatusID,
		   @CustomerContactID,
		   @NegotiateCustomerID ,
		   @ReasonRejectID,
		   @IsAutomate);
    END;
    ELSE
    BEGIN
        PRINT 'Update';
        UPDATE dbo.Tbl_CU_SalesLeads_Log
        SET UserID = @UserID,
            RegDate = @RegDate,
            RegTime = @RegTime,
            InputPort = @InputPort,
            NationalCode = @NationalCode,
            FullName = @FullName,
        
    MobileNO = @MobileNO,
            PhoneNO = @PhoneNO,
            JobTitle = @JobTitle,
            InsuranceGroupID = @InsuranceGroupID,
           -- ProvinceID = @ProvinceID,
           -- CityID = @CityID,
            Descript = @Descript,
            ExpertUserID = @ExpertUserID,
            ExpertDate = @ExpertDate,
            ExpertTime = @ExpertTime,
            NextAgencyUserID = @NextAgencyUserID,
      
            ContactDesc = @ContactDesc,
            IsContact = @IsContact,
            ContactDate = @ContactDate,
            ContactTime = @ContactTime,
            ResultDesc = @ResultDesc,
            Issued = @Issued,
            NotIssued = @NotIssued,
            FullBno = @FullBno,
		   CustomerContactID = @CustomerContactID,
		   NegotiateCustomerID = @NegotiateCustomerID,
		   ReasonRejectID = @ReasonRejectID,
            [AgencyGradeID] =
            (
                SELECT TOP 1
                       GradeID
                FROM dbo.Tbl_CU_Base_DefinitionAgency
                WHERE AgencyCode =
                (
                    SELECT TOP 1
                           PersonnelCode
                    FROM Users.TblProfiles
                    WHERE UserId = AgencyUserID
                )
            ),StatusID=@statusID,
			IsAutomate=@IsAutomate,
			 [NextAgencyGradeID] =
            (
                SELECT TOP 1
                       GradeID
                FROM dbo.Tbl_CU_Base_DefinitionAgency
                WHERE AgencyCode =
                (
                    SELECT TOP 1
                           PersonnelCode
                    FROM Users.TblProfiles
                    WHERE UserId = NextAgencyUserID
                )
            )
        WHERE (GUIDD = @GUIDD and GUIDD<>'')
              OR WFID = @WFID;
    END;
    end
	else --@IsAutomate=1
	begin
	SELECT 
           @RegDate = dbo.MiladiToShamsi(GETDATE()),
           @RegTime = dbo.OnlyTime(GETDATE()),
           @InputPort = 6,
           @NationalCode = Nationalid,
           @FullName = FirstName + ' ' + LastName,
           @MobileNO = MobileNO,
           @PhoneNO = TelNo,
           @JobTitle = '',
		   @InsuranceGroupID=reshteid,
           @InsuranceGroupTitle = ReshteTitle,
           @ProvinceID = ProvinceID,
           @CityID = CityID,
           @Descript = '',
		   @PolicyID=PolicyID,
           --@Issued = Col_4713191385551044467,
           --@NotIssued = Col_5372234100468683109,
           --@FullBno = Col_5124242136251439262,
		   @NameBimehGozar = (select top 1 [Name] + ' ' + [LName] from [SamanInsCustomer].[crm].[Tbl_Person] where PersonInsuranceID = CCR.PersonID AND RoleId = 161),
		   @CodeBimehGozar = personid,
		   @EndDateKey = (SUBSTRING(CAST(EndDateKey AS NVARCHAR), 1,4) + '/' + SUBSTRING(CAST(EndDateKey AS NVARCHAR), 5,2) + '/' + SUBSTRING(CAST(EndDateKey AS NVARCHAR), 7,2)),
		   @ShobeSarParasti = AgentName,
		   @ProvinceTitle = ProvinceName,
		   @CityTitle = CityName,
		   @RecoveryCodeSodurKey = CodeSodurKey,
		   @PersonID = PersonID,
		   @AgentCode = AgentCode,
		   @SarparastCode = SarparastCode,
		   @SarparastName = SarparastName
	

    FROM Tbl_Cu_FanavaranCustomersRecovery CCR
    WHERE CCR.PolicyID = @CustomerRecoveryKey
	
	if exists (select top 1 1 from dbo.Tbl_frm198
    WHERE frm198Id IN
          (
              SELECT MAX(PKFormID)
              FROM Task.TblFormInstance
              WHERE WorkflowInstanceId = @WFID
                    AND FormID = 198
          ))
		  begin
	SELECT @UserID = Col_4639891614577493038,
	       --@RegDate = Col_4962505521418366642,
        --   @RegTime = Col_5566475310013326353,           
           @IsContact = Col_5672081014092220427,
           @ContactDate = Col_4621335856663143943,
           @ContactTime = Col_5442010510253248869,
           @ResultDesc = Col_5676000566889795729,
		   @Descript = Col_4628781788341651288,
           --@Issued = Col_4713191385551044467,
           --@NotIssued = Col_5372234100468683109,
           --@FullBno = Col_5124242136251439262,
           @GUIDD = Col_5522297125622396319,
		    @CustomerContactID = Col_4716113222665995154,
		   @NegotiateCustomerID = Col_4911284196201931262,
		   @ReasonRejectID = Col_5611438163255659051,
           @NextAgencyUserID = Col_5649399619552018490
    FROM dbo.Tbl_frm198
    WHERE frm198Id IN
          (
              SELECT MAX(PKFormID)
              FROM Task.TblFormInstance
              WHERE WorkflowInstanceId = @WFID
                    AND FormID = 198
          );
     end
    IF NOT EXISTS
    (
        SELECT *
        FROM [dbo].[Tbl_CU_SalesLeads_Log]
        WHERE WFID = @WFID
              OR ( [GUIDD] = @GUIDD and GUIDD<>'')
    )
    BEGIN
        PRINT 'Insertrec';
        INSERT INTO dbo.Tbl_CU_SalesLeads_Log
        (
            WFID,
            --UserID,
            RegDate,
            RegTime,
            InputPort,
            NationalCode,
            FullName,
            MobileNO,
            PhoneNO,
            JobTitle,
            InsuranceGroupID,
            ProvinceID,
            CityID,
			InsuranceGroupTitle,
			ProvinceTitle,
			CityTitle,
            Descript,
            --ExpertUserID,
            --ExpertDate,
            --ExpertTime,
            --AgencyUserID,
            --NextAgencyUserID,
            ContactDesc,
            --IsContact,
            --ContactDate,
            --ContactTime,
            --ResultDesc,
            --Issued,
            --NotIssued,
            --FullBno,
            GUIDD,
			StatusID,
		   --CustomerContactID,
		   --NegotiateCustomerID ,
		   --ReasonRejectID,
		   IsAutomate,
		   CustomerRecoveryKey,
		   PolicyID,
		   NameBimehGozar,
		   CodeBimehGozar,
		   EndDateKey,
		   ShobeSarParasti,
		   RecoveryCodeSodurKey,
		   PersonID,
		   AgentCode,
		   SarparastCode,
		   SarparastName
        )
        VALUES
        (   @WFID,             -- WFID - bigint
            --@UserID,           -- UserID - bigint
            @RegDate,          -- RegDate - nvarchar(10)
            @RegTime,          -- RegTime - nvarchar(5)
            @InputPort,        -- InputPort - int
            @NationalCode,     -- NationalCode - nvarchar(10)
            @FullName,         -- FullName - nvarchar(100)
            @MobileNO,         -- MobileNO - nvarchar(11)
            @PhoneNO,          -- PhoneNO - nvarchar(11)
            @JobTitle,         -- JobTitle - nvarchar(50)
            @InsuranceGroupID, -- InsuranceGroupID - int
            @ProvinceID,       -- ProvinceID - int
            @CityID,           -- CityID - int
			@InsuranceGroupTitle,
			@ProvinceTitle,
			@CityTitle,
            @Descript,         -- Descript - nvarchar(2000)
            --@ExpertUserID,     -- ExpertUserID - bigint
            --@ExpertDate,       -- ExpertDate - nvarchar(10)
            --@ExpertTime,       -- ExpertTime - nvarchar(5)
            --@AgencyUserID,     -- AgencyUserID - bigint
            --@NextAgencyUserID, -- NextAgencyUserID - bigint
            @ContactDesc,      -- ContactDesc - nvarchar(2000)
            --@IsContact,        -- IsContact - bit
            --@ContactDate,      -- ContactDate - nvarchar(10)
            --@ContactTime,      -- ContactTime - nvarchar(5)
            --@ResultDesc,       -- ResultDesc - nvarchar(1000)
            --@Issued,           -- Issued - bit
            --@NotIssued,        -- NotIssued - bit
            --@FullBno,          -- FullBno - nvarchar(50),
            @GUIDD,
			@StatusID,
		   --@CustomerContactID,
		   --@NegotiateCustomerID ,
		   --@ReasonRejectID,
		   @IsAutomate,
		   @CustomerRecoveryKey,
		   @PolicyID,
		   @NameBimehGozar,
		   @CodeBimehGozar,
		   @EndDateKey,
		   @ShobeSarParasti,
		   @RecoveryCodeSodurKey,
		   @PersonID,
		   @AgentCode,
		   @SarparastCode,
		   @SarparastName
		   );
    END;
    ELSE
    BEGIN
        PRINT 'Update2';

        UPDATE dbo.Tbl_CU_SalesLeads_Log
        SET UserID = @UserID,
           -- --RegDate = @RegDate,
           -- --RegTime = @RegTime,
            --InputPort = @InputPort,
           -- NationalCode = @NationalCode,
          --  FullName = @FullName,
          --  MobileNO = @MobileNO,
         --   PhoneNO = @PhoneNO,
         --   JobTitle = @JobTitle,
         --   InsuranceGroupID = @InsuranceGroupID,
         --   ProvinceID = @ProvinceID,
        --    CityID = @CityID,
		--    InsuranceGroupTitle=@InsuranceGroupTitle,
		--	ProvinceTitle=@ProvinceTitle,
		--	CityTitle=@CityTitle,
            Descript = @Descript,
         --   ExpertUserID = @ExpertUserID,
         --   ExpertDate = @ExpertDate,
         --   ExpertTime = @ExpertTime,
            NextAgencyUserID = @NextAgencyUserID,
      
          --  ContactDesc = @ContactDesc,
            IsContact = @IsContact,
            ContactDate = @ContactDate,
            ContactTime = @ContactTime,
            ResultDesc = @ResultDesc,
            --Issued = @Issued,
            --NotIssued = @NotIssued,
            --FullBno = @FullBno,
		   CustomerContactID = @CustomerContactID,
		   NegotiateCustomerID = @NegotiateCustomerID,
		   ReasonRejectID = @ReasonRejectID,
            [AgencyGradeID] =
            (
                SELECT TOP 1
                       GradeID
                FROM dbo.Tbl_CU_Base_DefinitionAgency
                WHERE AgencyCode =
                (
                    SELECT TOP 1
                           PersonnelCode
                    FROM Users.TblProfiles
                    WHERE UserId = AgencyUserID
                )
            ),
			--StatusID=@statusID,
			--IsAutomate=@IsAutomate,
			 [NextAgencyGradeID] =
            (
                SELECT TOP 1
                       GradeID
                FROM dbo.Tbl_CU_Base_DefinitionAgency
                WHERE AgencyCode =
                (
                    SELECT TOP 1
                           PersonnelCode
                    FROM Users.TblProfiles
                    WHERE UserId = NextAgencyUserID
                )
            )
			--PolicyID=@PolicyID
        WHERE (GUIDD = @GUIDD and GUIDD<>'')
              OR WFID = @WFID;
    END;
	end


    SELECT CASE
                           WHEN ISNULL(NextAgencyUserID, 0) = 0 THEN
                               AgencyUserID
                           ELSE
                               NextAgencyUserID
                       END AS AgencyUserID,
		   RegTime,
		   RegDate
    FROM dbo.Tbl_CU_SalesLeads_Log
    WHERE WFID = @WFID;
END;
---------------------------------------------------------------------
go

---------------------------------------------------------------------
ALTER PROCEDURE [dbo].[Sp_Cu_LoadInfo_Tbl_CU_SalesLeads_Log] @WFID AS BIGINT, @Flag bit
AS
BEGIN
declare @CustomerRecoveryKey bigint=(select top 1 isnull(CustomerRecoveryKey,0) from Tbl_CU_SalesLeads_Log where WFID=@WFID)
declare @ActivityID bigint=(select top 1 ActivityID from task.TblWorkflowActivityInstance
                            where WokflowInstanceID=@WFID order by WorkflowActivityInstanceID desc)
if @CustomerRecoveryKey=0
begin
print'1'
    SELECT TOP 1
           WFID,
           GUIDD,
           UserID,
           RegDate,
           RegTime,
           InputPort,
           NationalCode,
           FullName,
           MobileNO,
           PhoneNO,
           JobTitle,
           InsuranceGroupID AS BimeGroupID,
		   '' as InsuranceGroupTitle,
            (
               SELECT top 1
                      InsprvncName
               FROM [192.168.100.160].ForSite.[dbo].CityMapForSite
               WHERE InsprvncCode = [dbo].[Tbl_CU_SalesLeads_Log].ProvinceID
           )ProvinceName,
           (SELECT top 1
                      InscityName 
               FROM [192.168.100.160].ForSite.[dbo].CityMapForSite
               WHERE InscityCode = [dbo].[Tbl_CU_SalesLeads_Log].CityID)CityName,
           Descript,
		   ResultDesc,
		   ContactDate,
		   ContactTime,
		   FullBno,
		   Issued,
		   NotIssued,
		   IsContact,
		   ContactDesc,
		   ProvinceID,
		   CityID,
		   IsAutomate,
		   cast(0 as bit) as [Recovery],
		   '' as PolicyID,
		   '' as PersonID,
		   '' as AgentCode,
		   '' as SarparastCode,
		   '' as SarparastName
    FROM dbo.Tbl_CU_SalesLeads_Log
    WHERE WFID = @WFID
    ORDER BY SalesleadsLogID DESC;
end
else if @CustomerRecoveryKey<>0 and @Flag=0
begin
print '2'
    SELECT TOP 1
           WFID,
           GUIDD,
           UserID,
           '' as RegDate,
           '' as RegTime,
           InputPort,
           NationalCode,
           FullName,
           MobileNO,
           PhoneNO,
           JobTitle,
           InsuranceGroupID AS BimeGroupID,
		   InsuranceGroupTitle,
          (
               SELECT top 1
                      InsprvncName
               FROM [192.168.100.160].ForSite.[dbo].CityMapForSite
               WHERE InsprvncCode = [dbo].[Tbl_CU_SalesLeads_Log].ProvinceID
           )ProvinceName,
           (SELECT top 1
                      InscityName 
               FROM [192.168.100.160].ForSite.[dbo].CityMapForSite
               WHERE InscityCode = [dbo].[Tbl_CU_SalesLeads_Log].CityID) as CityName,
           Descript,
		   ResultDesc,
		   '' as ContactDate,
		   '' as ContactTime,
		   FullBno,
		   Issued,
		   NotIssued,
		   IsContact,
		   ContactDesc,
		   ProvinceID,
		   CityID,
		   IsAutomate,
		   cast(1 as bit) as [Recovery],
		   PolicyID,
		   PersonID,
		   AgentCode,
		   SarparastCode,
		   SarparastName

    FROM dbo.Tbl_CU_SalesLeads_Log
    WHERE WFID = @WFID
    ORDER BY SalesleadsLogID DESC;
end
else if @CustomerRecoveryKey<>0 and @Flag=1 and @ActivityID=5534199145228840067
begin
print'3'
    SELECT TOP 1
           WFID,
           GUIDD,
           UserID,
           dbo.MiladiToShamsi(GETDATE()) as RegDate,
           dbo.OnlyTime(GETDATE()) as RegTime,
           InputPort,
           NationalCode,
           FullName,
           MobileNO,
           PhoneNO,
           JobTitle,
           InsuranceGroupID AS BimeGroupID,
		   InsuranceGroupTitle,
           (
               SELECT top 1
                      InsprvncName
               FROM [192.168.100.160].ForSite.[dbo].CityMapForSite
               WHERE InsprvncCode = [dbo].[Tbl_CU_SalesLeads_Log].ProvinceID
           )ProvinceName,
           (SELECT top 1
                      InscityName 
               FROM [192.168.100.160].ForSite.[dbo].CityMapForSite
               WHERE 
InscityCode = [dbo].[Tbl_CU_SalesLeads_Log].CityID) as CityName,
           Descript,
		   ResultDesc,
		   dbo.MiladiToShamsi(GETDATE()) as ContactDate,
		   dbo.OnlyTime(GETDATE()) as ContactTime,
		   FullBno,
		   Issued,
		   NotIssued,
		   IsContact,
		   ContactDesc,
		   ProvinceID,
		   CityID,
		   IsAutomate,
		   cast(1 as bit) as [Recovery],
		   PolicyID,
		   PersonID,
		   AgentCode,
		   SarparastCode,
		   SarparastName
    FROM dbo.Tbl_CU_SalesLeads_Log
    WHERE WFID = @WFID
    ORDER BY SalesleadsLogID DESC;
end
else
begin
print '4'
 SELECT TOP 1
           WFID,
           GUIDD,
           UserID,
           dbo.MiladiToShamsi(GETDATE()) as RegDate,
           dbo.OnlyTime(GETDATE()) as RegTime,
           InputPort,
           NationalCode,
           FullName,
           MobileNO,
           PhoneNO,
           JobTitle,
           InsuranceGroupID AS BimeGroupID,
		   InsuranceGroupTitle,
           (
               SELECT top 1
                      InsprvncName
               FROM [192.168.100.160].ForSite.[dbo].CityMapForSite
               WHERE InsprvncCode = [dbo].[Tbl_CU_SalesLeads_Log].ProvinceID
           )ProvinceName,
           (SELECT top 1
                      InscityName 
               FROM [192.168.100.160].ForSite.[dbo].CityMapForSite
               WHERE InscityCode = [dbo].[Tbl_CU_SalesLeads_Log].CityID) as CityName,
           Descript,
		   ResultDesc,
		   ContactDate,
		   ContactTime,
		   FullBno,
		   Issued,
		   NotIssued,
		   IsContact,
		   ContactDesc,
		   ProvinceID,
		   CityID,IsAutomate,
		   cast(1 as bit) as [Recovery],
		   PolicyID,
		   PersonID,
		   AgentCode,
		   SarparastCode,
		   SarparastName
    FROM dbo.Tbl_CU_SalesLeads_Log
    WHERE WFID = @WFID
    ORDER BY SalesleadsLogID DESC;
end
END;






